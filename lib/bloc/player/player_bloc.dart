import 'dart:math';

import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:media/player_controller.dart';

part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final Random random = Random();

  PlayerBloc() : super(PlayerState.initial()) {
    on<PlayerEvent>(
      (event, emit) async {
        logger.d('PlayerBloc event:$event');
        await event.map(
          song: (value) async => await requestSong(value, emit),
          songDetail: (value) async => emit(state.copyWith(songDetail: value.songDetail)),
          isPlaying: (value) async => emit(state.copyWith(isPlaying: value.isPlaying)),
          duration: (value) async => emit(state.copyWith(duration: value.duration)),
          songList: (value) async => emit(state.copyWith(songList: value.list)),
          lyric: (value) async {
            emit(state.copyWith(lyricVM: ViewModel.requesting()));
            await PlaylistClient(dio).lyric(value.id).then((value) {
              emit(state.copyWith(lyricVM: ViewModel.response(value)));
            }).catchError((v) {
              emit(state.copyWith(lyricVM: ViewModel.error(null)));
            });
          },
          nextSong: (value) async => nextPlay(emit),
          preSong: (value) async => preSong(emit),
        );
      },
    );
  }

  void addPlayRecord(Song song, Emitter<PlayerState> emit) {
    final List<Song> list = List.from(state.playRecord);
    list.add(song);
    if (state.playRecord.length > 3) {
      list.removeAt(0);
    }

    emit(state.copyWith(playRecord: list));
  }

  // TODO: 未测试
  void preSong(Emitter<PlayerState> emit) {
    if (state.playRecord.isNotEmpty) {
      final List<Song> list = List.from(state.playRecord);

      final song = list.removeLast();
      final $song = PlayerEvent.song(song, state.songList) as $playSong;
      requestSong($song, emit);
      emit(state.copyWith(playRecord: list));
    } else {
      nextPlay(emit);
    }
  }

  Future<void> requestSong($playSong value, Emitter<PlayerState> emit) async {
    addPlayRecord(value.song, emit);
    emit(state.copyWith(
      playingSong: value.song,
      lyricVM: ViewModel.requesting(),
      songList: value.songList,
    ));

    await SearchClient(dio).songUrl(value.song.id.toString()).then((value) async {
      final detail = value.data![0];
      await PlayerController.instance.play(detail.url!);
      emit(state.copyWith(songDetail: detail));
      return value;
    });

    await PlaylistClient(dio).lyric(value.song.id).then((value) {
      final list = value.lrc.lyric.split('\n');

      /// 解析歌词: 并计算 UI 列表中的高度
      /// TODO: 正则表达式
      final lyricList = <Lyric>[];
      double height = 0;
      for (final i in list) {
        if (i.isEmpty) continue;

        final start = i.indexOf('[');
        final end = i.indexOf(']');
        final content = i.substring(end + 1);
        height += content.isEmpty ? 0.0 : Lyric.itemHeight;

        var time = i.substring(start + 1, end).split(':');
        final minutes = int.tryParse(time[0]) ?? 0;

        time = time[1].split('.');
        final seconds = int.tryParse(time[0]) ?? 0;
        final mills = int.tryParse(time[1]) ?? 0;

        lyricList.add(
          Lyric(
            time: Duration(minutes: minutes, seconds: seconds, milliseconds: mills),
            content: i.substring(end + 1),
            height: height,
          ),
        );
      }

      emit(
        state.copyWith(lyricVM: ViewModel.response(value), lyricList: lyricList),
      );
      return value;
    });
  }

  void nextPlay(Emitter<PlayerState> emit) {
    logger.d('$runtimeType: nextPlay');

    late int index;
    final songList = state.songList;

    switch (state.loopType) {
      case LoopType.random:
        index = random.nextInt(songList.length);
        break;
      case LoopType.singLoop:
        index = songList.indexWhere((e) => e.id == state.playingSong?.id);
        break;
      case LoopType.listLoop:
        index = (songList.indexWhere((e) => e.id == state.playingSong?.id) + 1) % songList.length;
        break;
    }

    final song = PlayerEvent.song(songList[index], songList) as $playSong;
    requestSong(song, emit);
  }
}

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.song(Song song, List<Song> songList) = $playSong;

  const factory PlayerEvent.songDetail(SongDetail songDetail) = $songDetail;

  const factory PlayerEvent.isPlaying(bool isPlaying) = $isPlaying;

  const factory PlayerEvent.duration(Duration duration) = $duration;

  const factory PlayerEvent.lyric(int id) = lyric;

  const factory PlayerEvent.songList(List<Song> list) = $songList;

  const factory PlayerEvent.nextSong() = $nextSong;

  const factory PlayerEvent.preSong() = $preSong;
}

enum LoopType {
  // 随机播放
  random,
  // 列表播放
  listLoop,
  // 单曲循环
  singLoop,
}

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    Song? playingSong,
    SongDetail? songDetail,
    required bool isPlaying,
    required Duration duration,
    required ViewModel<LyricResponse> lyricVM,
    required List<Lyric> lyricList,
    required List<Song> songList,
    required LoopType loopType,
    required List<Song> playRecord,
  }) = _PlayerState;

  factory PlayerState.initial() => PlayerState(
        isPlaying: false,
        duration: Duration.zero,
        lyricVM: ViewModel.initial(),
        lyricList: const [],
        songList: const [],
        loopType: LoopType.listLoop,
        playRecord: List.from(<Song>[]),
      );
}

extension PlayerStateExtension on PlayerState {
  String get avatar => playingSong?.al?.picUrl ?? Assets.icDefaultAvatar.path;

  String get songName => playingSong?.name ?? '';
}

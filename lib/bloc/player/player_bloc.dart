import 'package:cloud_music/bloc/bloc.dart';
import 'package:cloud_music/common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:media/player_controller.dart';

part 'player_bloc.freezed.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(PlayerState.initial()) {
    on<PlayerEvent>((event, emit) async {
      logger.d('PlayerBloc event:$event');
      await event.map(
        song: (value) async => await requestSong(value, emit),
        songDetail: (value) async => emit(state.copyWith(songDetail: value.songDetail)),
        isPlaying: (value) async => emit(state.copyWith(isPlaying: value.isPlaying)),
        duration: (value) async => emit(state.copyWith(duration: value.duration)),
        lyric: (value) async {
          emit(state.copyWith(lyricVM: ViewModel.requesting()));
          await PlaylistClient(dio).lyric(value.id).then((value) {
            emit(state.copyWith(lyricVM: ViewModel.response(value)));
          }).catchError((v) {
            emit(state.copyWith(lyricVM: ViewModel.error(null)));
          });
        },
      );
    });
  }

  Future<void> requestSong(_song value, Emitter<PlayerState> emit) async {
    emit(state.copyWith(playingSong: value.song, lyricVM: ViewModel.requesting()));
    await SearchClient(dio).songUrl(value.song.id.toString()).then((value) async {
      final detail = value.data![0];
      await AudioPlayerController.instance.play(detail.url!);
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
}

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.song(Song song) = _song;

  const factory PlayerEvent.songDetail(SongDetail songDetail) = _songDetail;

  const factory PlayerEvent.isPlaying(bool isPlaying) = _isPlaying;

  const factory PlayerEvent.duration(Duration duration) = _duration;

  const factory PlayerEvent.lyric(int id) = _lyric;
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
  }) = _PlayerState;

  factory PlayerState.initial() => PlayerState(
        isPlaying: false,
        duration: Duration.zero,
        lyricVM: ViewModel.initial(),
        lyricList: const [],
      );
}

extension PlayerStateExtension on PlayerState {
  String get avatar => playingSong?.al?.picUrl ?? Assets.icDefaultAvatar.path;

  String get songName => playingSong?.name ?? '';
}

import 'package:cloud_music/network/search/search.dart';
import 'package:cloud_music/utils/logger_extensions.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  final dio = Dio();
  final client = SearchClient(dio);

  group('搜索', () {
    test('搜索歌曲 URL', () async {
      await client.songUrl('167827').then((value) async {
        logger.d('sentCaptcha $value');
        
      });
    });

  });
}

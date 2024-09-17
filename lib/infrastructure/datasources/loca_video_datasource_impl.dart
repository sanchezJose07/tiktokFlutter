import 'package:myapp/domain/datasources/video_posts_datasource.dart';
import 'package:myapp/domain/entities/video_post.dart';
import 'package:myapp/infrastructure/models/local_video_model.dart';
import 'package:myapp/shared/data/local_video_post.dart';

class LocalVideoDatasource implements VideoPostsDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String UserID ) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage( int page ) async {
    await Future.delayed( const Duration( seconds: 2 ) );

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}

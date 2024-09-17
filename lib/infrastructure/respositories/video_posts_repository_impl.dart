
import 'package:myapp/domain/datasources/video_posts_datasource.dart';
import 'package:myapp/domain/entities/video_post.dart';
import 'package:myapp/domain/repositories/videos_posts_repositories.dart';

class VideoPostsRepositoryImpl implements VideosPostsRepositories{

  final VideoPostsDatasource videosDatasources;

  VideoPostsRepositoryImpl({
    required this.videosDatasources
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasources.getTrendingVideosByPage( page );
  }

}

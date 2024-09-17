import 'package:myapp/domain/entities/video_post.dart';

abstract class VideosPostsRepositories {
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID);
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}

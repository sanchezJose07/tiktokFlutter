import 'package:flutter/material.dart';
import 'package:myapp/domain/entities/video_post.dart';
import 'package:myapp/infrastructure/respositories/video_posts_repository_impl.dart';


// clase que nos notifica si es que hay un cambio en la aplicacion
class DiscoverProvider extends ChangeNotifier {
  final VideoPostsRepositoryImpl videoPostsRepository;

  DiscoverProvider({required this.videoPostsRepository});

  List<VideoPost> videos = [];
  bool initialLoading = true;

  Future<void> loadNextPage() async {
    //await Future.delayed(const Duration(seconds: 2));

    //final List<VideoPost> newVideos = videoPosts
    //    .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
    //    .toList();

    final newVideos = await videoPostsRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/domain/entities/video_post.dart';
import 'package:myapp/infrastructure/models/local_video_model.dart';
import 'package:myapp/shared/data/local_video_post.dart';


// clase que nos notifica si es que hay un cambio en la aplicacion
class DiscoverProvider extends ChangeNotifier {
  List<VideoPost> videos = [];
  bool initialLoading = true;

  Future<void> loadNextPage() async {
    //await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}

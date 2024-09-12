import 'package:flutter/material.dart';
import 'package:myapp/domain/entities/video_post.dart';
import 'package:myapp/presentation/widgets/shared/video_buttons.dart';
import 'package:myapp/presentation/widgets/video/fullScreen_player.dart';

// Clase para el control de como es el comportamiento de los videos en la aplicacion
class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            //Video
            SizedBox.expand(
              child: FullScreenPlayer(
                videoUrl: videoPost.videoUrl,
                caption: videoPost.caption
                ),
            ),

            //Botones
            Positioned(
                bottom: 40, right: 20, child: VideoButtons(video: videoPost))
          ],
        );
      },
    );
  }
}

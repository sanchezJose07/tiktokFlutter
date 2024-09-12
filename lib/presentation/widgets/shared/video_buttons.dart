import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:myapp/config/helpers/human_formats.dart';
import 'package:myapp/domain/entities/video_post.dart';

// Clase para mostrar los botones de en la pantalla 
class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _CustomIconButton(value: 0, iconData: Icons.account_box_rounded ),
        _CustomIconButton(value: video.likes, iconData: Icons.favorite, iconColor: Colors.red),
        _CustomIconButton(value: video.views, iconData: Icons.remove_red_eye_outlined),
        const _CustomIconButton(value: 115, iconData: Icons.comment_sharp ),
        const _CustomIconButton(value: 6465, iconData: Icons.bookmark, iconColor: Colors.yellow, ),
        const _CustomIconButton(value: 45, iconData: Icons.share_sharp ),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _CustomIconButton(value: 0, iconData: Icons.play_circle_outline )
        )
      ],
    );
  }
}

// Clase para personalizar cada uno de los botones de la aplicacion
class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIconButton({
    required this.value,
    required this.iconData,
    iconColor
  }): color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              iconData,
              color: color,
              size: 30,
            )),
            if( value > 0)
              Text(HumanFormats.HumanReadableNumber( value.toDouble() )),
      ],
    );
  }
}


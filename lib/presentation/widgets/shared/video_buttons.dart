import 'package:flutter/material.dart';
import 'package:tiktok/config/helpers/format_numbers.dart';
import 'package:tiktok/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost videoPost;

  const VideoButtons({super.key, required this.videoPost});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _CustomIconButton(
          value: videoPost.likes,
          color: Colors.red,
          iconData: Icons.favorite,
        ),
        const SizedBox(height: 20),
        _CustomIconButton(
          value: videoPost.views,
          color: Colors.white,
          iconData: Icons.remove_red_eye,
        ),
        const SizedBox(height: 20),
        const _CustomIconButton(
          value: 0,
          color: Colors.white,
          iconData: Icons.play_circle_outline,
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIconButton({
    required this.value,
    required this.iconData,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            iconData,
            color: color,
            size: 30,
          ),
        ),
        if (value > 0)
          Text(
            FormatNumbers.readableNumber(value.toDouble()),
            style: const TextStyle(color: Colors.white),
          ),
      ],
    );
  }
}

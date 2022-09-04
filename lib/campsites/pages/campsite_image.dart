import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';
import 'package:spots_coding_task/campsites/util/util.dart';

class CampsiteImage extends StatelessWidget {
  const CampsiteImage({super.key, required this.campsite});
  final Campsite campsite;

  @override
  Widget build(BuildContext context) {
    if (campsite.hasImage) {
      return Hero(
        tag: campsite.hashCode,
        child: CachedNetworkImage(
          imageUrl: campsite.betterPhotoUrl,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );
    } else {
      return Image.asset('assets/default_image.png');
    }
  }
}

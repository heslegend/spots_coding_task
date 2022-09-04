import 'package:flutter/material.dart';
import 'package:spots_coding_task/campsites/pages/campsite_image.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';

class ImageArea extends StatelessWidget {
  const ImageArea({
    Key? key,
    required this.campsite,
  }) : super(key: key);

  final Campsite campsite;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      pinned: false,
      expandedHeight: 400,
      iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
      flexibleSpace: CampsiteImage(campsite: campsite),
      backgroundColor: Theme.of(context).canvasColor,
    );
  }
}

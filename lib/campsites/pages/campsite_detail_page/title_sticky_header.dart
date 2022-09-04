import 'package:flutter/material.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';
import 'package:spots_coding_task/campsites/util/util.dart';

class TitleStickyHeader extends StatelessWidget {
  const TitleStickyHeader({
    Key? key,
    required this.campsite,
  }) : super(key: key);

  final Campsite campsite;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          campsite.label.capitalize(),
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      elevation: 1.0,
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).canvasColor,
      pinned: true,
      floating: true,
      snap: true,
    );
  }
}

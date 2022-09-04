import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';

class CampsitesListItemAmenityIcons extends StatelessWidget {
  const CampsitesListItemAmenityIcons({
    required this.campsite,
    super.key,
  });

  final Campsite campsite;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (campsite.isCloseToWater)
          const Icon(
            Icons.waves,
          ),
        const SizedBox(
          width: 4.0,
        ),
        if (campsite.isCampFireAllowed)
          const Icon(
            CupertinoIcons.flame_fill,
          ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';
import 'package:spots_coding_task/campsites/pages/campsite_detail_page/campsite_detail_page.dart';
import 'package:spots_coding_task/campsites/pages/campsite_image.dart';
import 'package:spots_coding_task/campsites/pages/campsite_page/campsites_list_item_info_widget.dart';

class CampsiteListItem extends StatelessWidget {
  const CampsiteListItem({
    required this.campsite,
    super.key,
  });
  final Campsite campsite;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => CampsiteDetailPage(campsite: campsite),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Card(
                clipBehavior: Clip.hardEdge,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: CampsiteImage(
                  campsite: campsite,
                ),
              ),
            ),
            CampsitesListItemInfoWidget(campsite: campsite),
          ],
        ),
      ),
    );
  }
}

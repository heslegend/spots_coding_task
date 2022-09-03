import 'package:flutter/material.dart';
import 'package:spots_coding_task/campsites/pages/campsite_detail_page/booking_bottom_sheet.dart';
import 'package:spots_coding_task/campsites/pages/campsite_detail_page/image_area.dart';
import 'package:spots_coding_task/campsites/pages/campsite_detail_page/info_area.dart';
import 'package:spots_coding_task/campsites/pages/campsite_detail_page/text_description_area.dart';
import 'package:spots_coding_task/campsites/pages/campsite_detail_page/title_sticky_header.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';

class CampsiteDetailPage extends StatelessWidget {
  const CampsiteDetailPage({required this.campsite, super.key});
  final Campsite campsite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: CustomScrollView(
        slivers: [
          ImageArea(campsite: campsite),
          TitleStickyHeader(campsite: campsite),
          InfoArea(campsite: campsite),
          const TextDescriptionArea(),
        ],
      ),
      bottomSheet: BookingBottomSheet(campsite: campsite),
    );
  }
}

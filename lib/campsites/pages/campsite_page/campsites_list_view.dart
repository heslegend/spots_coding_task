import 'package:flutter/material.dart';
import 'package:spots_coding_task/campsites/pages/campsite_page/campsites_list_item.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';

class CampsitesListView extends StatelessWidget {
  final List<Campsite> campsites;

  const CampsitesListView({required this.campsites})
      : super(key: const Key('CampsitesListView'));

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: campsites
          .map((campsite) => CampsiteListItem(campsite: campsite))
          .toList(),
    );
  }
}

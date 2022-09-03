import 'package:flutter/material.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';
import 'package:spots_coding_task/campsites/pages/campsite_page/campsites_list_item_amenity_icons.dart';
import 'package:spots_coding_task/campsites/util/util.dart';

class CampsitesListItemInfoWidget extends StatelessWidget {
  const CampsitesListItemInfoWidget({
    required this.campsite,
    super.key,
  });
  final Campsite campsite;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).canvasColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  campsite.label.trim().capitalize(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      RichText(
                        text: TextSpan(
                            text:
                                '${campsite.pricePerNight.toInt().toString()} €',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: ' / Night',
                                  style: DefaultTextStyle.of(context).style),
                            ]),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CampsitesListItemAmenityIcons(campsite: campsite),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

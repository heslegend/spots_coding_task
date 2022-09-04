import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';

class InfoArea extends StatelessWidget {
  const InfoArea({
    Key? key,
    required this.campsite,
  }) : super(key: key);

  final Campsite campsite;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Column(
          children: [
            if (campsite.isCloseToWater)
              AmenityRow(
                leading: Text(
                  'Close to water',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                trailing: const Icon(
                  Icons.waves,
                ),
              ),
            if (campsite.isCampFireAllowed)
              AmenityRow(
                leading: Text(
                  'Campfires allowed',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                trailing: const Icon(
                  CupertinoIcons.flame_fill,
                ),
              ),
            AmenityRow(
              leading: Text('Host languages:',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold)),
              trailing: Text(
                campsite.hostLanguages.join(', ').toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}

class AmenityRow extends StatelessWidget {
  const AmenityRow({
    required this.leading,
    required this.trailing,
    super.key,
  });

  final Widget leading;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          leading,
          const Spacer(),
          trailing,
        ],
      ),
    );
  }
}

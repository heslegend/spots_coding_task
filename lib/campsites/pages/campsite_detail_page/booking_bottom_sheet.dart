import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';

class BookingBottomSheet extends StatelessWidget {
  const BookingBottomSheet({
    Key? key,
    required this.campsite,
  }) : super(key: key);

  final Campsite campsite;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: Theme.of(context).dividerColor,
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                                style: Theme.of(context).textTheme.labelMedium),
                          ]),
                    ),
                    RichText(
                      text: TextSpan(
                          text: '20.-23.Oct',
                          style: Theme.of(context).textTheme.labelMedium),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: SizedBox(
                    width: 80.0,
                    height: 40.0,
                    child: ElevatedButton(
                        onPressed: () => {
                              log('Wuhuu! - User booked something!'),
                            },
                        style: Theme.of(context).elevatedButtonTheme.style,
                        child: Text(
                          'Book',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

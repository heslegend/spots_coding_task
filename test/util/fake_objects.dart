import 'package:spots_coding_task/campsites/repository/model/campsite.dart';
import 'package:spots_coding_task/campsites/repository/model/geo_location.dart';

final fakeCampsites = [
  Campsite(
    id: '0',
    createdAt: DateTime.now(),
    geoLocation: const GeoLocation(
      latitude: 48.16408042277599,
      longitude: 11.560706332269328,
    ),
    label: 'Place to be',
    isCloseToWater: false,
    isCampFireAllowed: true,
    hostLanguages: ['de', 'en'],
    pricePerNight: 100.50,
    suitableFor: ['Everyone'],
  ),
  Campsite(
    id: '1',
    createdAt: DateTime.now()
        .subtract(const Duration(hours: 72, minutes: 10, seconds: 3)),
    geoLocation: const GeoLocation(
      latitude: 71.20078870788225,
      longitude: 25.790119938789598,
    ),
    label: 'Can get dark here',
    isCloseToWater: true,
    isCampFireAllowed: true,
    hostLanguages: ['de', 'en'],
    pricePerNight: 200.50,
    suitableFor: ['Everyone'],
  ),
];

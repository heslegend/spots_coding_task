import 'package:spots_coding_task/campsites/repository/model/campsite.dart';

extension CampsiteExtension on Campsite {
  bool get hasImage => photo != null;

  /// Utilty getter that adds the search term 'vanlife' and a unique hashcode per
  /// campsite to the photo url. The unique hashcode ensures that we get a
  /// unique image for every campsite. The search term 'vanlife' ensures we do
  /// not get cat pictures.
  String get betterPhotoUrl => '$photo/vanlife?random=$hashCode';
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

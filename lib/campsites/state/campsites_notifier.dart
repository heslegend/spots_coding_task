import 'package:riverpod/riverpod.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';
import 'package:spots_coding_task/campsites/repository/campsites_repository_impl.dart';
import 'package:spots_coding_task/campsites/state/campsites_state.dart';

final campsiteNotifierProvider =
    StateNotifierProvider.autoDispose<CampsiteNotifier, CampsitesState>(
        ((ref) => CampsiteNotifier(ref)));

class CampsiteNotifier extends StateNotifier<CampsitesState> {
  CampsiteNotifier(this._ref) : super(CampsitesState.loading()) {
    getCampsites();
  }
  final Ref _ref;

  Future<void> getCampsites() async {
    final campsitesResult =
        await _ref.watch(campsitesRepositoryProvider).getCampsites();

    campsitesResult.when(
      success: ((campsitesResult) => state = CampsitesState.success(
          campsites: sortCampsitesByName(campsitesResult))),
      error: ((error) => state = CampsitesState.error(error.message)),
    );
  }

  List<Campsite> sortCampsitesByName(List<Campsite> campsites) => List.of(
      campsites)
    ..sort(((a, b) => a.label.toLowerCase().compareTo(b.label.toLowerCase())));
}

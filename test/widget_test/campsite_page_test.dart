import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spots_coding_task/campsites/pages/campsite_page/campsites_page.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';
import 'package:spots_coding_task/campsites/state/campsites_notifier.dart';
import 'package:spots_coding_task/campsites/state/campsites_state.dart';

import '../util/fake_objects.dart';

class MockCampsiteNotifier extends StateNotifier<CampsitesState>
    implements CampsiteNotifier {
  MockCampsiteNotifier(mockState) : super(mockState);

  @override
  Future<void> getCampsites() async {}

  @override
  List<Campsite> sortCampsitesByName(List<Campsite> campsites) => campsites;
}

void main() {
  testWidgets('Displays CampsitesListView on CampsitesState.success',
      (WidgetTester tester) async {
    final mockCampsiteNotifier =
        MockCampsiteNotifier(CampsitesState.success(campsites: fakeCampsites));

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          campsiteNotifierProvider.overrideWithValue(mockCampsiteNotifier)
        ],
        child: const MaterialApp(home: CampsitesPage()),
      ),
    );

    expect(find.byKey(const Key('CampsitesListView')), findsOneWidget);
  });
  testWidgets(
      'Displays CampsitesShimmerLoadingIndicator on CampsitesState.loading',
      (WidgetTester tester) async {
    final mockCampsiteNotifier = MockCampsiteNotifier(CampsitesState.loading());

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          campsiteNotifierProvider.overrideWithValue(mockCampsiteNotifier)
        ],
        child: const MaterialApp(home: CampsitesPage()),
      ),
    );

    expect(find.byKey(const Key('CampsitesShimmerLoadingIndicator')),
        findsOneWidget);
  });

  testWidgets('Displays SportsErrorWidget on CampsitesState.error',
      (WidgetTester tester) async {
    final mockCampsiteNotifier =
        MockCampsiteNotifier(CampsitesState.error('Sorry!'));

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          campsiteNotifierProvider.overrideWithValue(mockCampsiteNotifier)
        ],
        child: const MaterialApp(home: CampsitesPage()),
      ),
    );

    expect(find.byKey(const Key('SportsErrorWidget')), findsOneWidget);
  });
}

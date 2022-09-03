import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_coding_task/campsites/pages/campsite_page/campshite_shimmer_loading_indicator.dart';
import 'package:spots_coding_task/campsites/pages/campsite_page/campsites_list_view.dart';
import 'package:spots_coding_task/campsites/state/campsites_notifier.dart';
import 'package:spots_coding_task/shared/widgets/spots_error_widgets.dart';

class CampsitesPage extends ConsumerWidget {
  const CampsitesPage({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final campsitesState = ref.watch(campsiteNotifierProvider);

    ref.listen(campsiteNotifierProvider, ((previous, next) {
      next.maybeWhen(
          error: ((message) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              )),
          orElse: () {});
    }));

    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: Center(
        child: RefreshIndicator(
          onRefresh: () async => await ref
              .refresh(campsiteNotifierProvider.notifier)
              .getCampsites(),
          child: campsitesState.when(
            success: ((campsites) => CampsitesListView(campsites: campsites)),
            loading: () => const CampsitesShimmerLoadingIndicator(),
            error: (error) => const SpotsErrorWidget(),
          ),
        ),
      ),
    );
  }
}

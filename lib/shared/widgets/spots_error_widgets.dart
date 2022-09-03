import 'package:flutter/widgets.dart';

class SpotsErrorWidget extends StatelessWidget {
  const SpotsErrorWidget() : super(key: const Key('SportsErrorWidget'));

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Image.asset(
              'assets/error_image.png',
              fit: BoxFit.contain,
            ))
      ],
      physics: const AlwaysScrollableScrollPhysics(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spots_coding_task/campsites/pages/campsite_page/campsites_page.dart';
import 'package:spots_coding_task/shared/config/colors.dart';
import 'package:spots_coding_task/shared/util/simple_provider_observer.dart';

void main() {
  runApp(
    const ProviderScope(
      observers: [SimpleProviderObserver()],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spots Demo App',
      theme: ThemeData(
        primarySwatch: roadsurferTurquoise,
      ),
      home: const CampsitesPage(),
    );
  }
}

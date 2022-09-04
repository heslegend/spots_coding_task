import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioClientProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: 'https://62ed0389a785760e67622eb2.mockapi.io/spots/v1',
    ),
  ),
);


import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final scrollControllerProvider = Provider<ScrollController>((ref) {
  return ScrollController();
});

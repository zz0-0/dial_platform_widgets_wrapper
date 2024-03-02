import 'package:dial_platform_widgets_wrapper/src/platform/platform.dart';
import 'package:flutter/foundation.dart';

Platform getPlatform() {
  if (kIsWeb) return Platform.web;
  throw UnimplementedError('Unsupported');
}

import 'dart:io' as io;

import 'package:dial_platform_widgets_wrapper/src/platform/platform.dart';

Platform getPlatform() {
  if (io.Platform.isAndroid) return Platform.android;
  if (io.Platform.isFuchsia) return Platform.android;
  if (io.Platform.isIOS) return Platform.ios;
  if (io.Platform.isLinux) return Platform.linux;
  if (io.Platform.isMacOS) return Platform.macos;
  if (io.Platform.isWindows) return Platform.windows;
  throw UnimplementedError('Unsupported');
}

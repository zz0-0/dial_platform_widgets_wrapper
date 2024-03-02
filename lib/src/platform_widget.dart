import 'package:dial_platform_widgets_wrapper/src/platform/platform.dart';
import 'package:fluent_ui/fluent_ui.dart' as windows;
import 'package:flutter/cupertino.dart' as ios;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as android;
import 'package:flutter/widgets.dart';
import 'package:libadwaita/libadwaita.dart' as gnome;
import 'package:macos_ui/macos_ui.dart' as macos;

abstract class PlatformWidget extends StatelessWidget {
  const PlatformWidget({super.key});

  android.Widget createAndroidWidget(BuildContext context);

  ios.Widget createIOSWidget(BuildContext context);

  Widget createLinuxWidget(BuildContext context);

  Widget createMacOSWidget(BuildContext context);

  windows.Widget createWindowsWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    final platform = getPlatform();
    if (platform == Platform.android || platform == Platform.fuchsia) {
      return createAndroidWidget(context);
    } else if (platform == Platform.ios) {
      return createIOSWidget(context);
    } else if (platform == Platform.linux) {
      return createLinuxWidget(context);
    } else if (platform == Platform.macos) {
      return createMacOSWidget(context);
    } else if (platform == Platform.windows) {
      return createWindowsWidget(context);
    } else if (platform == Platform.web) {
      return createAndroidWidget(context);
    }
    return throw UnsupportedError(
      'This platform is not supported: $defaultTargetPlatform',
    );
  }
}

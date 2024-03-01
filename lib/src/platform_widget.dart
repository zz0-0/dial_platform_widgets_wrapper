import 'dart:io';

import 'package:fluent_ui/fluent_ui.dart' as windows;
import 'package:flutter/cupertino.dart' as ios;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as android;
import 'package:flutter/widgets.dart';
import 'package:libadwaita/libadwaita.dart' as gnome;
import 'package:macos_ui/macos_ui.dart' as macos;

class PlatformWidget extends StatelessWidget {
  const PlatformWidget({super.key});

  android.Widget? createAndroidWidget(BuildContext context) {
    return null;
  }

  ios.Widget? createIOSWidget(BuildContext context) {
    return null;
  }

  Widget? createLinuxWidget(BuildContext context) {
    return null;
  }

  Widget? createMacOSWidget(BuildContext context) {
    return null;
  }

  windows.Widget? createWindowsWidget(BuildContext context) {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid || Platform.isFuchsia) {
      return createAndroidWidget(context)!;
    } else if (Platform.isIOS) {
      return createIOSWidget(context)!;
    } else if (Platform.isLinux) {
      return createLinuxWidget(context)!;
    } else if (Platform.isMacOS) {
      return createMacOSWidget(context)!;
    } else if (Platform.isWindows) {
      return createWindowsWidget(context)!;
    }
    return throw UnsupportedError(
      'This platform is not supported: $defaultTargetPlatform',
    );
  }
}

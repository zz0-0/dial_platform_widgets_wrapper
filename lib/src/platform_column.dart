import 'package:dial_platform_widgets_wrapper/src/platform_widget.dart';
import 'package:fluent_ui/fluent_ui.dart' as windows;
import 'package:flutter/cupertino.dart' as ios;
import 'package:flutter/material.dart' as android;
import 'package:flutter/widgets.dart';
import 'package:libadwaita/libadwaita.dart' as gnome;
import 'package:macos_ui/macos_ui.dart' as macos;

class PlatformColumn extends PlatformWidget {
  @override
  android.Column createAndroidWidget(BuildContext context) {
    return android.Column();
  }

  @override
  ios.Column createIOSWidget(BuildContext context) {
    return ios.Column();
  }

  @override
  Widget createLinuxWidget(BuildContext context) {
    // TODO: implement createLinuxWidget
    throw UnimplementedError();
  }

  @override
  Widget createMacOSWidget(BuildContext context) {
    // TODO: implement createMacOSWidget
    throw UnimplementedError();
  }

  @override
  Widget createWindowsWidget(BuildContext context) {
    return windows.Column();
  }
}

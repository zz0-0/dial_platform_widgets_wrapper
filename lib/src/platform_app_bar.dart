import 'package:dial_platform_widgets_wrapper/src/platform_widget.dart';
import 'package:fluent_ui/fluent_ui.dart' as windows;
import 'package:flutter/cupertino.dart' as ios;
import 'package:flutter/material.dart' as android;
import 'package:flutter/widgets.dart';
import 'package:libadwaita/libadwaita.dart' as gnome;
import 'package:macos_ui/macos_ui.dart' as macos;

class PlatformAppBar extends PlatformWidget {
  @override
  android.AppBar createAndroidWidget(BuildContext context) {
    return android.AppBar();
  }

  @override
  Widget createIOSWidget(BuildContext context) {
    // TODO: implement createIOSWidget
    throw UnimplementedError();
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
    // TODO: implement createWindowsWidget
    throw UnimplementedError();
  }
}

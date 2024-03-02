import 'package:dial_platform_widgets_wrapper/src/platform_widget.dart';
import 'package:fluent_ui/fluent_ui.dart' as windows;
import 'package:flutter/cupertino.dart' as ios;
import 'package:flutter/material.dart' as android;
import 'package:flutter/widgets.dart';
import 'package:libadwaita/libadwaita.dart' as gnome;
import 'package:macos_ui/macos_ui.dart' as macos;

class PlatformIcon extends PlatformWidget {
  @override
  Widget createAndroidWidget(BuildContext context) {
    return android.Icon();
  }

  @override
  Widget createIOSWidget(BuildContext context) {
    return ios.Icon();
  }

  @override
  Widget createLinuxWidget(BuildContext context) {
    // TODO: implement createLinuxWidget
    throw UnimplementedError();
  }

  @override
  Widget createMacOSWidget(BuildContext context) {
    return macos.MacosIcon();
  }

  @override
  Widget createWindowsWidget(BuildContext context) {
    return windows.Icon();
  }
}

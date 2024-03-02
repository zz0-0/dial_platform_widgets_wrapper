export 'platform_io.dart' if (dart.library.html) 'platform_web.dart';

enum Platform { android, fuchsia, ios, harmonyos, linux, macos, windows, web }

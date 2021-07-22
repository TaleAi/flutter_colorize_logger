import 'package:ansicolor/ansicolor.dart';

import 'client.dart';

class ColorizeLoggerClient extends LoggerClient {
  @override
  void error(String message, {String? tag}) {
    final error = AnsiPen()
      ..white(bold: true)
      ..xterm(88, bg: true);
    print(error(_format(tag ?? 'ERROR', message)));
  }

  @override
  void fatal(String message, {String? tag}) {
    final fatal = AnsiPen()
      ..white()
      ..red(bg: true);
    print(fatal(_format(tag ?? 'FATAL', message)));
  }

  @override
  void info(String message, {String? tag}) {
    final info = AnsiPen()
      ..black()
      ..green(bg: true);
    print(info(_format(tag ?? 'INFO', message)));
  }

  @override
  void warning(String message, {String? tag}) {
    final info = AnsiPen()
      ..black()
      ..yellow(bg: true);
    print(info(_format(tag ?? 'WARNING', message)));
  }

  String _format(String tag, String message) {
    return '[$tag] $message';
  }
}

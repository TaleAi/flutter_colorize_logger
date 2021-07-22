import 'package:colorize_logger/colorize_logger.dart';

class Logger {
  static LoggerClient? _client;

  static set client(LoggerClient client) {
    // release mode set to null
    _client = isReleaseMode() ? null : client;
  }

  static bool isReleaseMode() {
    return const bool.fromEnvironment('dart.vm.product', defaultValue: false);
  }

  static info(String message, {String? tag}) {
    _client?.info(message, tag: tag);
  }

  static warning(String message, {String? tag}) {
    _client?.warning(message, tag: tag);
  }

  static error(String message, {String? tag}) {
    _client?.error(message, tag: tag);
  }

  static fatal(String message, {String? tag}) {
    _client?.fatal(message, tag: tag);
  }
}

abstract class LoggerClient {
  void info(String message, {String? tag});
  void warning(String message, {String? tag});
  void error(String message, {String? tag});
  void fatal(String message, {String? tag});
}

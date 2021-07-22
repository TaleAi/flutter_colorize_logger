import 'package:colorize_logger/colorize_logger.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('colorize logger is null', () {
    Logger.info('message');
    Logger.warning('message');
    Logger.error('message');
    Logger.fatal('message');
  });

  test('colorize logger', () {
    Logger.client = ColorizeLoggerClient();
    Logger.info('message');
    Logger.warning('message');
    Logger.error('message');
    Logger.fatal('message');
  });
}

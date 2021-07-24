import 'package:flutter_test/flutter_test.dart';
import '../lib/src/controllers/home_controller.dart';

void main () {

  final controller = HomeController();

  test('Initial data', () {
    expect(controller.total, isNotNull);
    expect(controller.total, 0);
    expect(controller.total, isA<double>());
  });

  test('Loaded data', () async {
    await controller.getApi();
    expect(controller.total, isNotNull);
    expect(controller.total, 7627389.0);
  });

}
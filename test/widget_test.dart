// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:project_zeta/core/valorant/infra/repository/valorant_api_impl.dart';

void main() async {
  final vava = ValorantApiImpl();

  final r = await vava.getStats(username: "Meyer ツ", tagline: "easy");
  print(r);
}

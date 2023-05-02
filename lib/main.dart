import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_zeta/app_module.dart';
import 'package:project_zeta/app_widget.dart';

void main() {
  Modular.to.addListener(() {
    debugPrint(Modular.to.path);
  });
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}

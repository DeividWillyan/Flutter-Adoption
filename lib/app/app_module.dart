import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:adote/app/app_widget.dart';
import 'package:adote/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

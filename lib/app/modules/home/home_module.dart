import 'package:adote/app/modules/details/details_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:adote/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router('/details/:title', child: (_, args) => DetailsPage(title: args.params['title'])),
      ];

  static Inject get to => Inject<HomeModule>.of();
}

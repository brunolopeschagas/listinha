import 'package:app/src/configurarion/configuration_page.dart';
import 'package:app/src/shared/store/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => AppStore()),
        //futuro utilizar a versão nova: AutoBind.singleton(AppStore.new),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/home', module: HomeModule()),
        ChildRoute('/config',
            child: ((context, args) => const ConfigurationPage()))
      ];
}

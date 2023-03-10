import 'package:app/src/shared/store/app_store.dart';
import 'package:app/src/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //seta o modulo que vai iniciar o app
    Modular.setInitialRoute('/home/');
    final appStore = context.watch<AppStore>(
      (store) => store.themeMode,
    );

    return MaterialApp.router(
      title: 'Flutter Demo',
      themeMode: appStore.themeMode.value,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
      //CASO NÃO ESTEJAMOS USANDO OS MODULES, AS ROTAS SÃO FEITAS ASSIM (PARA APP SIMPLES)
      // routes: {
      //   '/': (context) => const HomePage(),
      //   '/config': (context) => const ConfigurationPage(),
      //   '/edit': (context) => const EditTaskBoardPage(),
      // },
    );
  }
}

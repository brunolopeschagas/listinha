import 'package:app/src/home/edit_task_board_page.dart';
import 'package:app/src/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        //home
        ChildRoute('/', child: ((context, args) => const HomePage())),
        //home/edit
        ChildRoute('/edit',
            child: ((context, args) => const EditTaskBoardPage()))
      ];
}

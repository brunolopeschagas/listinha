import 'package:app/src/shared/widgets/user_image_button.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text("Listinha"),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 8,
            ),
            child: UserImageButton(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SegmentedButton<int>(
                segments: [
                  const ButtonSegment(
                    value: 0,
                    label: const Text("Todos"),
                  ),
                  const ButtonSegment(
                    value: 1,
                    label: const Text("Pendentes"),
                  ),
                  const ButtonSegment(
                    value: 2,
                    label: const Text("Concluídas"),
                  ),
                  const ButtonSegment(
                    value: 3,
                    label: const Text("Desativadas"),
                  ),
                ],
                selected: const {1},
                onSelectionChanged: (values) {},
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text("Nova Lista"),
        onPressed: (() {
          Navigator.of(context).pushNamed('./edit');
          //ou também
          // Navigator.of(context).pushNamed('/home/edit');
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todoapp/widgets/add_task_bar.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddTaskBar(),
      ],
    );
  }
}

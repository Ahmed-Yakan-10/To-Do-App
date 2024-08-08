import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:todoapp/constants.dart';
import 'package:todoapp/services/task_controller.dart';
import 'package:todoapp/views/add_task_view.dart';
import 'package:todoapp/widgets/custom_button.dart';

class AddTaskBar extends StatefulWidget {
  const AddTaskBar({super.key});

  @override
  State<AddTaskBar> createState() => _AddTaskBarState();
}

class _AddTaskBarState extends State<AddTaskBar> {
  final TaskController taskController = Get.put(TaskController());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      margin: EdgeInsets.only(left: 20, right: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat().add_yMMMMd().format(DateTime.now()),
                style: TextStyle(
                  color: Get.isDarkMode? Colors.black: Colors.white,
                  fontSize: 32,
                ),
              ),
              Text(
                'Today',
                style: TextStyle(
                  color: Get.isDarkMode? Colors.black: Colors.white,
                  fontSize: 32,
                ),
              ),
            ],
          ),
          CustomButton(
            onTap: () async{
              await Get.to(()=>AddTaskView());
              taskController.getTasks();
            },
            text: 'Add Task',
          ),
        ],
      ),
    );
  }
}

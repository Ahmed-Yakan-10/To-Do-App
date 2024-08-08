import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:todoapp/constants.dart';
import 'package:todoapp/services/task_controller.dart';
import 'package:todoapp/widgets/color_palette.dart';
import 'package:todoapp/widgets/custom_button.dart';
import 'package:todoapp/widgets/custom_text_field.dart';

class AddTaskView extends StatefulWidget {
  const AddTaskView({super.key});

  static String id = 'AddTaskView';

  @override
  State<AddTaskView> createState() => _AddTaskViewState();
}

class _AddTaskViewState extends State<AddTaskView> {
  final TaskController taskController = Get.put(TaskController());

  final TextEditingController titleController = TextEditingController();
  final TextEditingController noteController = TextEditingController();

  DateTime selectedDate = DateTime.now();
  String startTime = DateFormat('hh:mm a').format(DateTime.now()).toString();
  String endTime = DateFormat('hh:mm a')
      .format(DateTime.now().add(Duration(minutes: 15)))
      .toString();
  int selectedRemind = 5;
  List<int> remindList = [5, 10, 15, 20];
  String selectedRepeat = "None";
  List<String> repeatList = ['None', 'Daily', 'Weekly', 'Monthly'];
  int selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //backgroundColor: kAppBarColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: Text(
          'Add Task',
          style: TextStyle(
            color: Get.isDarkMode ? Colors.white : darkGreyClr,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              CustomTextField(
                labelText: 'Title',
                hintText: 'Enter Note Title',
                controller: titleController,
              ),
              const SizedBox(height: 15),
              CustomTextField(
                labelText: 'Note',
                hintText: 'Enter Your Note',
                maxLines: 3,
                controller: noteController,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                labelText: 'Date',
                hintText: DateFormat.yMd().format(selectedDate),
                widget: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.calendar_today_outlined,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      labelText: 'Start Time',
                      hintText: startTime,
                      widget: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.access_time_rounded,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomTextField(
                      labelText: 'End Time',
                      hintText: endTime,
                      widget: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.access_time_rounded,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              CustomTextField(
                labelText: 'Reminder',
                hintText: '$selectedRemind minutes early',
                widget: DropdownButton(
                  onChanged: (int? newValue) {
                    setState(() {
                      selectedRemind = newValue!;
                    });
                  },
                  items: remindList
                      .map(
                        (value) => DropdownMenuItem(
                          value: value,
                          child: Text('$value'),
                        ),
                      )
                      .toList(),
                  elevation: 4,
                  underline: Container(height: 0),
                  icon: Icon(Icons.keyboard_arrow_down_sharp),

                ),
              ),
              const SizedBox(height: 10),
              CustomTextField(
                labelText: 'Repeat',
                hintText: selectedRepeat,
                widget: DropdownButton(
                  onChanged: (newValue) {
                    setState(() {
                      selectedRepeat = newValue.toString();
                    });
                  },
                  items: repeatList
                      .map(
                        (value) => DropdownMenuItem(
                      value: value,
                      child: Text('$value'),
                    ),
                  )
                      .toList(),
                  elevation: 4,
                  underline: Container(height: 0),
                  icon: Icon(Icons.keyboard_arrow_down_sharp),

                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ColorPalette(),
                  CustomButton(
                    onTap: () {
                      print('object');
                    },
                    text: 'Create Task',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



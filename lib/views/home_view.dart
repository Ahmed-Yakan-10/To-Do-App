import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/constants.dart';
import 'package:todoapp/services/theme_services.dart';
import 'package:todoapp/views/add_task_view.dart';
import 'package:todoapp/views/body_home_view.dart';
import 'package:todoapp/views/notification_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4),
          child: IconButton(
            onPressed: () {
              Get.to(
                NotificationView(
                  payLoad: 'Title Content|Description content|Time : 7:00',
                ),
              );
            },
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: kPrimaryColor,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                child: Image.asset(kIcon),
              ),
            ),
            Text(
              'To-Do',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: IconButton(
              onPressed: () {
                ThemeServices().switchTheme();
                setState(() {});
              },
              icon: Icon(
                Get.isDarkMode
                    ? Icons.light_mode_outlined
                    : Icons.dark_mode_outlined,
                size: 24,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: BodyHomeView(),
    );
  }
}

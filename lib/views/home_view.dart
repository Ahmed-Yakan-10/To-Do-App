import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/constants.dart';
import 'package:todoapp/services/theme_services.dart';
import 'package:todoapp/views/notification_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Row(
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
          IconButton(
            onPressed: () {
              ThemeServices().switchTheme();
              Get.to(
                NotificationView(
                  payLoad: 'Title Content|Description content|Time : 7:00',
                ),
              );
            },
            icon: Icon(Icons.light_mode_outlined),
          ),
        ],
      ),
    );
  }
}

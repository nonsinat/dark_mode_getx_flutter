// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:dark_mode_getx_flutter/services/notification_services.dart';
import 'package:dark_mode_getx_flutter/services/theme_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var notifyHelper;

  @override
  void initState() {
    //Important Point First We need to InitializationNotification and then Request Permission For IOS, Last one is Optional For Alert Again after 5 seconds

    // Display Notification after We change DarkMode in Leading Appbar
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
    notifyHelper.scheduledNotification();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ThemeService().switchTheme();
            notifyHelper.displayNotification(
              title: "Theme Changed",
              body: Get.isDarkMode
                  ? "Activated Light Theme"
                  : "Activated Dark Theme",
            );
          },
          icon: const Icon(Icons.mode_night),
        ),
      ),
      body: Column(
        children: [
          Text("Theme Data"),
        ],
      ),
    );
  }
}

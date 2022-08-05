import 'package:acl_digital/controller/employee_controller.dart';
import 'package:acl_digital/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(EmployeeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      defaultTransition: Transition.fadeIn,
      getPages: [
        GetPage(
          name: '/',
          page: () => const MyApp(),
        ),
        GetPage(
          name: '/HomePage',
          page: () =>  HomePage(),
        ),
      ],
      home: HomePage(),
    );
  }
}

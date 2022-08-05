import 'package:get/get.dart';

class EmployeeController extends GetxController {
  final name = "Priyanka Siva".obs;
  final age = "31".obs;

  @override
  void onInit() {
    super.onInit();
  }

  setName(String employeeName) {
    name(employeeName);
  }

  setAge(String employeeAge) {
    age(employeeAge);
  }
}

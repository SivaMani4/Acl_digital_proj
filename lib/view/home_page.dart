import 'package:acl_digital/constants/colors.dart';
import 'package:acl_digital/controller/employee_controller.dart';
import 'package:acl_digital/utils/widget_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final employeeController = Get.find<EmployeeController>();
  @override
  Widget build(BuildContext context) {
    var defaultWidth = MediaQuery.of(context).size.width;
    var defaultHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: kScaffoldBGColor,
          elevation: 0.0,
          titleSpacing: 20.0,
          centerTitle: true,
          title: SizedBox(
            width: defaultWidth / 2.6,
            child: Image.asset(
              'assets/images/acl-logo1.JPG',
            ),
          ),
        ),
        backgroundColor: kScaffoldBGColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customHeading("Profile"),
                customSizedBoxed(20),
                Obx(() {
                  return employeeController.name.value.isEmpty
                      ? BuildCard("Name :", "NA", () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              context: context,
                              builder: (_) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    customSizedBoxed(20),
                                    SizedBox(
                                      height: defaultHeight / 12,
                                      child: Obx(
                                        () {
                                          return employeeController
                                                  .name.value.isEmpty
                                              ? customText("NA", kTextColor)
                                              : customText(
                                                  employeeController.name.value,
                                                  kTextColor);
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: RoundedInput(
                                          hintText: "Edit the name...",
                                          onSubmit: (value) =>
                                              employeeController.setName(value),
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                                RegExp('[a-zA-Z]')),
                                            FilteringTextInputFormatter.deny(
                                                RegExp('[abFeG]')),
                                            LengthLimitingTextInputFormatter(10)
                                          ],
                                        ),
                                      ),
                                    ),
                                    customSizedBoxed(40),
                                  ],
                                );
                              });
                        })
                      : BuildCard(
                          "Name :",
                          employeeController.name.value,
                          () {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20),
                                  ),
                                ),
                                context: context,
                                builder: (_) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      customSizedBoxed(20),
                                      SizedBox(
                                        height: defaultHeight / 12,
                                        child: Obx(
                                          () {
                                            return employeeController
                                                    .name.value.isEmpty
                                                ? customText("NA", kTextColor)
                                                : customText(
                                                    employeeController
                                                        .name.value,
                                                    kTextColor);
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: MediaQuery.of(context)
                                                .viewInsets
                                                .bottom),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: RoundedInput(
                                            hintText: "Edit the name...",
                                            onSubmit: (value) =>
                                                employeeController
                                                    .setName(value),
                                            inputFormatters: [
                                              FilteringTextInputFormatter.allow(
                                                  RegExp('[a-zA-Z]')),
                                              FilteringTextInputFormatter.deny(
                                                  RegExp('[abFeG]')),
                                              LengthLimitingTextInputFormatter(
                                                  10)
                                            ],
                                          ),
                                        ),
                                      ),
                                      customSizedBoxed(40),
                                    ],
                                  );
                                });
                          },
                        );
                }),
                customSizedBoxed(10),
                Obx(() {
                  return employeeController.age.value.isEmpty
                      ? BuildCard("Age :", "NA", () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              context: context,
                              builder: (_) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    customSizedBoxed(20),
                                    SizedBox(
                                      height: defaultHeight / 12,
                                      child: Obx(
                                        () {
                                          return employeeController
                                                  .age.value.isEmpty
                                              ? customText("NA", kTextColor)
                                              : customText(
                                                  employeeController.age.value
                                                      .toString(),
                                                  kTextColor);
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: RoundedInput(
                                          hintText: "Edit the age...",
                                          onSubmit: (value) =>
                                              employeeController.setAge(value),
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                                RegExp('[0-9]')),
                                            FilteringTextInputFormatter.deny(
                                                RegExp('[abFeG]')),
                                            LengthLimitingTextInputFormatter(2)
                                          ],
                                        ),
                                      ),
                                    ),
                                    customSizedBoxed(40),
                                  ],
                                );
                              });
                        })
                      : BuildCard(
                          "Age :", employeeController.age.value.toString(), () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              context: context,
                              builder: (_) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    customSizedBoxed(20),
                                    SizedBox(
                                      height: defaultHeight / 12,
                                      child: Obx(
                                        () {
                                          return employeeController
                                                  .age.value.isEmpty
                                              ? customText("NA", kTextColor)
                                              : customText(
                                                  employeeController.age.value
                                                      .toString(),
                                                  kTextColor);
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: RoundedInput(
                                          hintText: "Edit the age...",
                                          onSubmit: (value) =>
                                              employeeController.setAge(value),
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                                RegExp('[0-9]')),
                                            FilteringTextInputFormatter.deny(
                                                RegExp('[abFeG]')),
                                            LengthLimitingTextInputFormatter(2)
                                          ],
                                        ),
                                      ),
                                    ),
                                    customSizedBoxed(40),
                                  ],
                                );
                              });
                        });
                }),
                customSizedBoxed(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

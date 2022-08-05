import 'package:acl_digital/constants/colors.dart';
import 'package:flutter/material.dart';

TextStyle customTextStyleRegular(
    {required var fontSize, required Color textColor}) {
  return TextStyle(
      fontSize: fontSize,
      color: textColor,
      height: 1.5,
      fontWeight: FontWeight.w400);
}

class RoundedInput extends StatelessWidget {
  final String hintText;
  final Function(String) onSubmit;
  final inputFormatters;
  const RoundedInput({
    required this.hintText,
    required this.onSubmit,
    required this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onSubmitted: onSubmit,
    );
  }
}

Widget customHeading(String? headingText) {
  return Text(
    headingText!,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 28,
    ),
    textAlign: TextAlign.center,
  );
}

Widget customText(String? cardText, Color? TextColor) {
  return Text(
    cardText!,
    style: TextStyle(
      color: TextColor,
      fontSize: 28,
    ),
    textAlign: TextAlign.center,
  );
}

Widget customSizedBoxed(double? height) {
  return SizedBox(
    height: height!,
  );
}

Widget customIcon({
  required Widget myIcon,
  required VoidCallback onPressedFn,
  Color? iconColor,
}) {
  return IconButton(
    onPressed: onPressedFn,
    color: iconColor,
    icon: myIcon,
  );
}

class BuildCard extends StatelessWidget {
  String? name;
  String? age;
  VoidCallback onPressed;
  BuildCard(this.name, this.age, this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var defaultwidth = MediaQuery.of(context).size.width;
    var defaultheight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: defaultwidth,
      height: defaultheight / 12,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            customText(name, kTextColor),
            customText(age, kTextColor),
            customIcon(
                onPressedFn: onPressed,
                myIcon: const Icon(
                  Icons.edit,
                  color: kTextColor,
                ))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderPickerWidget extends StatefulWidget {
  const GenderPickerWidget({super.key});

  @override
  State<GenderPickerWidget> createState() => _GenderPickerWidgetState();
}

class _GenderPickerWidgetState extends State<GenderPickerWidget> {
  String gender = 'not selected';
  bool tapped = false;
  Color colorSelected = const Color(0xFF2566CF);
  Color colorNotSelected = const Color(0xFF8B8B8B);
  Color colorBackgroundSelected = const Color(0xFFDFE9F9);
  Color colorBackgroundNotSelected = const Color(0xFFD9D9D9);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ,
      child: Container(
        width: 148,
        height: 148,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xD9D9D9D9)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              FontAwesomeIcons.person,
              size: 74,
              color: Colors.grey,
            ),
            SizedBox(
              height: 6,
            ),
            Text('Male'),
          ],
        ),
      ),
    );
  }
}

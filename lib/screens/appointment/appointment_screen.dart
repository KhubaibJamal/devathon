import 'package:devathon/components/default_button.dart';
import 'package:devathon/const.dart';
import 'package:devathon/size_config.dart';
import 'package:flutter/material.dart';

import 'component/about_doctor.dart';
import 'component/dr_detail_box.dart';
import 'component/schedule.dart';
import 'component/visited_hours.dart';

class AppointmentScreen extends StatefulWidget {
  // static String routeName = "/appointment";
  final String drName;
  final String field;
  const AppointmentScreen({
    super.key,
    required this.drName,
    required this.field,
  });

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: textColor)),
        title: Text("Appointments",
            style: defaultTextStyle.copyWith(color: textColor)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(15),
              vertical: getProportionateScreenWidth(10),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Rectangle 2.png',
                  ),
                  SizedBox(height: getProportionateScreenWidth(10)),
                  Text(widget.drName, style: defaultTextStyle),
                  SizedBox(height: getProportionateScreenWidth(10)),
                  Text(
                    widget.field,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: getProportionateScreenWidth(15),
                    ),
                  ),
                  // dr detail box
                  SizedBox(height: getProportionateScreenWidth(10)),
                  const DrDetailBox(),

                  // about dr
                  SizedBox(height: getProportionateScreenWidth(20)),
                  const AboutDoctor(),

                  // schedule
                  SizedBox(height: getProportionateScreenWidth(20)),
                  const Schedule(),

                  // visit hours
                  SizedBox(height: getProportionateScreenWidth(20)),
                  const VisitedHours(),

                  // button
                  SizedBox(height: getProportionateScreenWidth(20)),
                  DefaultButton(text: "Book Appointment", press: () {})
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

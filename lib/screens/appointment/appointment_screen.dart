import 'package:devathon/const.dart';
import 'package:devathon/size_config.dart';
import 'package:flutter/material.dart';

import 'component/about_doctor.dart';
import 'component/dr_detail_box.dart';

class AppointmentScreen extends StatelessWidget {
  // static String routeName = "/appointment";
  final String drName;
  final String field;
  const AppointmentScreen({
    super.key,
    required this.drName,
    required this.field,
  });

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
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Rectangle 2.png',
                ),
                SizedBox(height: getProportionateScreenWidth(10)),
                Text(drName, style: defaultTextStyle),
                SizedBox(height: getProportionateScreenWidth(10)),
                Text(
                  field,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

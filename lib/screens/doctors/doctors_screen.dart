import 'package:devathon/size_config.dart';
import 'package:flutter/material.dart';

import '../../components/doctor_list.dart';
import '../../const.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

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
        title: Text("Top Doctors",
            style: defaultTextStyle.copyWith(color: textColor)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(10),
        ),
        child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    EdgeInsets.only(bottom: getProportionateScreenWidth(10)),
                child: const DoctorList(
                  drName: "Dr. Maria Waston",
                  field: "Heart Surgeon, London, England",
                ),
              );
            }),
      ),
    );
  }
}

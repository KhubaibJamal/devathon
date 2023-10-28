import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devathon/size_config.dart';
import 'package:flutter/material.dart';

import '../../components/doctor_list.dart';
import '../../const.dart';
import '../../services/database_services.dart';

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
        child: StreamBuilder(
          stream: db.collection("doctors").snapshots(),
          builder: ((context, AsyncSnapshot<QuerySnapshot> snapshot) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: snapshot.data!.docs.length,
              itemBuilder: ((context, index) {
                if (snapshot.hasData) {
                  return DoctorList(
                    drName: snapshot.data!.docs[index]['name'],
                    field: snapshot.data!.docs[index]['doctorField'],
                  );
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text("Something went wrong"),
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              }),
            );
          }),
        ),
      ),
    );
  }
}

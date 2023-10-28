import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devathon/models/category_list.dart';
import 'package:flutter/material.dart';
import '../../../const.dart';
import '../../../services/database_services.dart';
import '../../../size_config.dart';
import 'category_box.dart';
import '../../../components/doctor_list.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(22),
        vertical: getProportionateScreenWidth(15),
      ),
      width: SizeConfig.screenHeight!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Category",
            style: defaultTextStyle.copyWith(
              color: textColor,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              categoryCardList.length,
              (index) => CategoryBox(
                  category: "${categoryCardList[index]['category']}",
                  icon: "${categoryCardList[index]['icon']}"),
            ),
          ),

          // doctors
          SizedBox(height: getProportionateScreenWidth(20)),
          // const DoctorList(
          //   drName: "Dr. Maria Waston",
          //   field: "Heart Surgeon, London, England",
          // ),
          // SizedBox(height: getProportionateScreenWidth(10)),
          // const DoctorList(
          //   drName: "Dr. Stevi Jessi",
          //   field: "General Dentist",
          // ),
          //
          StreamBuilder(
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
        ],
      ),
    );
  }
}

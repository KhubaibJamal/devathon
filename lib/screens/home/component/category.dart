import 'package:devathon/models/category_list.dart';
import 'package:flutter/material.dart';
import '../../../const.dart';
import '../../../size_config.dart';
import 'category_box.dart';
import 'doctor_list.dart';

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
          DoctorList(
            drName: "Dr. Maria Waston",
            field: "Heart Surgeon, London, England",
            press: () {},
          ),
          SizedBox(height: getProportionateScreenWidth(10)),
          DoctorList(
            drName: "Dr. Stevi Jessi",
            field: "General Dentist",
            press: () {},
          ),
        ],
      ),
    );
  }
}

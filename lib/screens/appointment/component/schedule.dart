import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class Schedule extends StatelessWidget {
  const Schedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Schedule",
              style: defaultTextStyle.copyWith(color: textColor),
            ),
            Text(
              "August",
              style: TextStyle(
                color: Colors.grey,
                fontSize: getProportionateScreenWidth(20),
              ),
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DateContainer(date: "7", day: "SUN"),
            DateContainer(date: "8", day: "MON"),
            DateContainer(date: "9", day: "TUE"),
            DateContainer(date: "10", day: "WED"),
          ],
        )
      ],
    );
  }
}

class DateContainer extends StatefulWidget {
  final String date;
  final String day;
  const DateContainer({
    super.key,
    required this.date,
    required this.day,
  });

  @override
  State<DateContainer> createState() => _DateContainerState();
}

class _DateContainerState extends State<DateContainer> {
  bool isTap = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTap = !isTap;
        });
      },
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: isTap == true ? purpleColor : whiteColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
        child: Column(
          children: [
            Text(
              widget.date,
              style: defaultTextStyle.copyWith(
                  color: isTap == true ? whiteColor : textColor),
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            Text(
              widget.day,
              style: TextStyle(
                color: isTap == true ? whiteColor : Colors.grey,
                fontSize: getProportionateScreenWidth(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

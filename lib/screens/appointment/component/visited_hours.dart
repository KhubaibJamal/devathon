import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class VisitedHours extends StatelessWidget {
  const VisitedHours({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Visit Hours",
          style: defaultTextStyle.copyWith(color: textColor),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TimeContainer(time: "11:00AM"),
            TimeContainer(time: "12:00PM"),
            TimeContainer(time: "01:00PM"),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TimeContainer(time: "01:00PM"),
            TimeContainer(time: "02:00PM"),
            TimeContainer(time: "03:00PM"),
          ],
        ),
      ],
    );
  }
}

class TimeContainer extends StatefulWidget {
  final String time;
  const TimeContainer({
    super.key,
    required this.time,
  });

  @override
  State<TimeContainer> createState() => _TimeContainerState();
}

class _TimeContainerState extends State<TimeContainer> {
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
        padding: const EdgeInsets.all(8),
        height: 50,
        width: 90,
        decoration: BoxDecoration(
          color: isTap == true ? purpleColor : textFieldColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
        child: Center(
          child: Text(
            widget.time,
            style: TextStyle(
              color: isTap == true ? whiteColor : textColor,
              fontSize: getProportionateScreenWidth(15),
            ),
          ),
        ),
      ),
    );
  }
}

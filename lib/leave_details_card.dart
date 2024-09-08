import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/style.dart';
import 'package:flutter_svg/svg.dart';

class LeaveDetailsCard extends StatelessWidget {
  const LeaveDetailsCard(
      {super.key,
      required this.asset,
      required this.header,
      required this.subtitle,
      required this.count});
  final String asset;
  final String header;
  final String subtitle;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
     
      width: 170,
      height: 135,
      child: Card(
        shape: Border.all(color: Colors.grey,width: 0.3,),
        elevation: 8,
        color: Color.fromRGBO(245, 245, 245, 1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                asset,
                height: 30,
                width: 30,
              ),
              hb10,
              Text(
                header,
                style: fontStyle(
                    FontWeight.w300, 12, Color.fromRGBO(44, 44, 44, 1)),
              ),
              hb10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    subtitle,
                    style: fontStyle(
                        FontWeight.normal, 10, Color.fromRGBO(120, 120, 140, 1)),
                  ),
                  Text(
                    count,
                    style: fontStyle(
                        FontWeight.bold, 10, Color.fromRGBO(120, 120, 140, 1)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

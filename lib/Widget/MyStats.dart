import 'package:flutter/material.dart';

class MyStats extends StatelessWidget {
  final String title;
  final String subtitle;
  const MyStats({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // width: 50,
        // height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,

          // border: Border.all(color: Colors.black),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12.360679775,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

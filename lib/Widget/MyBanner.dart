import 'package:flutter/material.dart';

class MyBanner extends StatelessWidget {
  final String title;
  final String headline;
  final String kategori;
  final String image;

  final Function() onTap;

  MyBanner({
    super.key,
    required this.title,
    required this.headline,
    required this.kategori,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: double.infinity,
            height: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Opacity(
              opacity: 0.59,
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
              )),
          Container(
            margin: const EdgeInsets.only(
              right: 10,
              top: 150,
              left: 24,
            ),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 400,
                  child: Text(
                    title,
                    style: TextStyle(
                      wordSpacing: 2,
                      color: Colors.white,
                      fontSize: 11.1,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    headline,
                    style: TextStyle(
                        height: 1.15,
                        wordSpacing: 2,
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              right: 10,
              top: 20,
              left: 24,
            ),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 400,
                  child: Text(
                    kategori,
                    style: TextStyle(
                      wordSpacing: 2,
                      color: Colors.white,
                      fontSize: 11.1,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

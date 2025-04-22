import 'package:flutter/material.dart';

class MyNews extends StatelessWidget {
  final String kategori;
  final String image;
  final String headline;
  final String lastUpdate;
  final String avatar;
  final String userName;

  const MyNews({
    super.key,
    required this.kategori,
    required this.image,
    required this.headline,
    required this.lastUpdate,
    required this.avatar,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      // height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    // width: 100,
                    child: Text(
                      kategori,
                      style: TextStyle(
                        wordSpacing: 2,
                        // color: Colors.white,
                        fontSize: 11.5,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    // width: 250,
                    width: double.maxFinite,
                    child: Text(
                      headline,
                      style: TextStyle(
                          wordSpacing: 3,
                          height: 1.15,
                          // color: Colors.white,
                          fontSize: 14.5,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    child: Row(children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(avatar),
                      ),
                      Text("  By ${userName}",
                          style: TextStyle(fontSize: 11.5)),
                      Text("  ・", style: TextStyle(fontSize: 11.5)),
                      Text("  ${lastUpdate}", style: TextStyle(fontSize: 11.5)),
                    ]),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            width: 120,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

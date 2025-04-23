import 'package:aplikasi_berita_tugas2/Widget/MyButton.dart';
import 'package:aplikasi_berita_tugas2/Widget/MyStats.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      child: ClipRRect(
                        clipBehavior: Clip.none,
                        child: Image.asset(
                          "assets/images/profile.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 150, left: 20),
                      padding: const EdgeInsets.all(5),
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/images/profile.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Navigator.maybeOf(context) != null &&
                            Navigator.canPop(context)
                        ? Container(
                            margin: const EdgeInsets.only(top: 10, left: 10),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                )),
                          )
                        : Container()
                  ],
                ),
              ),
              Container(
                // color: Colors.black,
                margin: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 15,
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pengguna",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "pengguna@gmail.com",
                          style: TextStyle(
                            fontSize: 12.360679775,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 4,
                            offset: Offset(0, 11),
                          ),
                        ],
                        // border: Border.all(color: Colors.black),
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                margin: const EdgeInsets.only(left: 25, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border(
                      bottom: BorderSide(
                    color: Colors.black,
                  )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25, right: 25),
                child: Text(
                  """lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat""",
                  style: TextStyle(
                    fontSize: 12.360679775,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    MyStats(
                      title: "1K",
                      subtitle: "Followers",
                    ),
                    MyStats(
                      title: "500",
                      subtitle: "Following",
                    ),
                    MyStats(
                      title: "80",
                      subtitle: "Favorites",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

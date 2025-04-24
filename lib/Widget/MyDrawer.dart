import 'package:aplikasi_berita_tugas2/Pages/MyHomePage.dart';
import 'package:aplikasi_berita_tugas2/Router/MyRouter.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MyRouter.ProfileRoute());
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.fromLTRB(16, 20, 50, 20),
              decoration: BoxDecoration(
                // shape: BoxShape.rectangle,
                border: Border(bottom: BorderSide(color: Colors.black54)),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  Expanded(
                    // color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pengguna",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "pengguna@gmail.com",
                          style: TextStyle(
                            fontSize: 11.12,
                          ),
                        )
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(
                      "assets/images/profile.jpg",
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 18),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: ListTile(
              leading: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              title: Text("Beranda"),
              onTap: () {
                Navigator.pushReplacement(context, MyRouter.HomeRoute());
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: ListTile(
              leading: Icon(
                Icons.bookmark_outline_outlined,
                color: Colors.black,
              ),
              title: Text("Bookmarks"),
              onTap: () {
                Navigator.pushReplacement(context, MyRouter.BookmarkRoute());
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: ListTile(
              leading: Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
              ),
              title: Text("Notifikasi"),
              onTap: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: ListTile(
              leading: Icon(
                Icons.mic_none_outlined,
                color: Colors.black,
              ),
              title: Text("Podcast"),
              onTap: () {},
            ),
          ),
          Expanded(child: Container()),
          Container(
            padding: EdgeInsets.only(bottom: 20, top: 10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.black54)),
              color: Colors.transparent,
            ),
            child: ListTile(
              leading: Icon(
                Icons.settings_outlined,
                color: Colors.black,
              ),
              title: Text("Pengaturan"),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

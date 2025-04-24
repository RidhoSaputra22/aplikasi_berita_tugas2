import 'package:aplikasi_berita_tugas2/Model/NewsModel.dart';
import 'package:aplikasi_berita_tugas2/Widget/MyDrawer.dart';
import 'package:aplikasi_berita_tugas2/Widget/MyNews.dart';
import 'package:flutter/material.dart';

class MyCollectionPage extends StatelessWidget {
  const MyCollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.bookmark_outline,
                    color: Colors.black,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Bookmarks",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              padding: const EdgeInsets.only(left: 5),
              child: Text("Bookmark your favorite news and read them later"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 150,
              margin: const EdgeInsets.only(left: 5, bottom: 5),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border(
                    bottom: BorderSide(
                  color: Colors.black,
                )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ...NewsModel.getBanner()
                .map((e) => MyNews(
                      headline: e.headline,
                      kategori: e.kategori,
                      image: e.image,
                      lastUpdate: e.lastUpdate,
                      avatar: e.avatar,
                      userName: e.userName,
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}

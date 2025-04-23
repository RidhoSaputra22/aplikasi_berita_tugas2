import 'package:aplikasi_berita_tugas2/Model/NewsModel.dart';
import 'package:aplikasi_berita_tugas2/Widget/MyBanner.dart';
import 'package:aplikasi_berita_tugas2/Widget/MyButton.dart';
import 'package:aplikasi_berita_tugas2/Widget/MyDrawer.dart';
import 'package:aplikasi_berita_tugas2/Widget/MyNews.dart';
import 'package:aplikasi_berita_tugas2/Widget/MySearchBar.dart';
import 'package:aplikasi_berita_tugas2/Router/MyRouter.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        shadowColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_on_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9.0),
            child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 23,
                  backgroundImage: AssetImage(
                    "assets/images/profile.jpg",
                  ),
                )),
          )
        ],
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(6),
                child: SizedBox(
                  // width: 10,
                  child: Text(
                    "Selamat Datang, Pengguna",
                    style: TextStyle(
                        height: 1.15,
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w300),
                  ),
                )),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: MySearchBar(
                onTap: () {
                  Navigator.of(context).push(MyRouter.searchNewsRoute());
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              // height: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(6),
                child: Row(
                  // scrollDirection: Axis.horizontal,
                  children: [
                    MyButton(
                      text: "Bisnis",
                      onTap: () {
                        Navigator.of(context).push(
                            MyRouter.searchNewsRoute(searchKey: "Bisnis"));
                      },
                    ),
                    MyButton(
                      text: "Olahraga",
                      onTap: () {
                        Navigator.of(context).push(
                            MyRouter.searchNewsRoute(searchKey: "Olahraga"));
                      },
                    ),
                    MyButton(
                      text: "Lifestyle",
                      onTap: () {
                        Navigator.of(context).push(
                            MyRouter.searchNewsRoute(searchKey: "Lifestyle"));
                      },
                    ),
                    MyButton(
                      text: "Teknologi",
                      onTap: () {
                        Navigator.of(context).push(
                            MyRouter.searchNewsRoute(searchKey: "Teknologi"));
                      },
                    ),
                    MyButton(
                      text: "Kesehatan",
                      onTap: () {
                        Navigator.of(context).push(
                            MyRouter.searchNewsRoute(searchKey: "Bisnis"));
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: CarouselSlider(
                  options: CarouselOptions(
                    height: 250,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    enableInfiniteScroll: true,
                  ),
                  items: NewsModel.getBanner()
                      .map((e) => MyBanner(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MyRouter.newsDetailRoute(newsModel: e));
                            },
                            kategori: e.kategori,
                            image: e.image,
                            headline: e.headline,
                            title: "Berita Terkini",
                          ))
                      .toList()),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(6),
              child: SizedBox(
                child: Text("Trending",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: Column(
                children: NewsModel.getGenerateData()
                    .map((e) => InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MyRouter.newsDetailRoute(newsModel: e));
                          },
                          child: MyNews(
                            kategori: e.kategori,
                            image: e.image,
                            headline: e.headline,
                            lastUpdate: e.lastUpdate,
                            avatar: e.avatar,
                            userName: e.userName,
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

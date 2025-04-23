import 'package:aplikasi_berita_tugas2/Model/NewsModel.dart';
import 'package:aplikasi_berita_tugas2/Router/MyRouter.dart';
import 'package:aplikasi_berita_tugas2/Widget/MyButton.dart';
import 'package:aplikasi_berita_tugas2/Widget/MyNews.dart';
import 'package:aplikasi_berita_tugas2/Widget/MySearchBar.dart';
import 'package:flutter/material.dart';

class MySearchNewsPage extends StatelessWidget {
  final String? searchKey;
  const MySearchNewsPage({super.key, this.searchKey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Explore Berita",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            children: [
              MySearchBar(
                searchKey: searchKey,
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
                      ),
                      MyButton(text: "Olahraga"),
                      MyButton(text: "Life Style"),
                      MyButton(text: "Teknologi"),
                      MyButton(text: "Kesehatan"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(6),
                child: SizedBox(
                  child: Text("Hasil Pencarian",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                ),
              ),
              SizedBox(
                height: 10,
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
      ),
    );
  }
}

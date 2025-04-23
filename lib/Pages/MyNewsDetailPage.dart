import 'package:aplikasi_berita_tugas2/Model/NewsModel.dart';
import 'package:aplikasi_berita_tugas2/Widget/MyButton.dart';
import 'package:flutter/material.dart';

class MyNewsDetailPage extends StatefulWidget {
  final NewsModel newsModel;
  const MyNewsDetailPage({
    super.key,
    required this.newsModel,
  });

  @override
  State<MyNewsDetailPage> createState() => _MyNewsDetailPageState();
}

class _MyNewsDetailPageState extends State<MyNewsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  widget.newsModel.headline,
                  style: TextStyle(
                    height: 1.15,
                    fontSize: 32,
                    // fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  widget.newsModel.lastUpdate,
                  style: TextStyle(
                    height: 1.15,
                    fontSize: 19.77708764,
                    // fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(widget.newsModel.avatar),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.newsModel.userName,
                          style: TextStyle(
                            height: 1.15,
                            fontSize: 16,
                            // fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "sebastian@gmail.com",
                          style: TextStyle(
                            height: 1.15,
                            fontSize: 11,
                            // fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    MyButton(text: "Follow", onTap: () {}),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(widget.newsModel.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  widget.newsModel.detail,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

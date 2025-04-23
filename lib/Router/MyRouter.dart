import 'package:aplikasi_berita_tugas2/Pages/MyNewsDetailPage.dart';
import 'package:aplikasi_berita_tugas2/Pages/MyProfilePage.dart';
import 'package:aplikasi_berita_tugas2/Pages/MySearchNewsPage.dart';
import 'package:flutter/material.dart';

class MyRouter {
  static searchNewsRoute({String? searchKey}) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondAnimation) => MySearchNewsPage(
              searchKey: searchKey,
            ),
        transitionsBuilder: (context, animation, secondAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          final tween = Tween(begin: begin, end: end);
          final curvedAnimation =
              CurvedAnimation(parent: animation, curve: curve);

          return SlideTransition(
            position: tween.animate(curvedAnimation),
            child: child,
          );
        });
  }

  static newsDetailRoute({required newsModel}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondAnimation) => MyNewsDetailPage(
        newsModel: newsModel,
      ),
      transitionsBuilder: (context, animation, secondAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        final tween = Tween(begin: begin, end: end);
        final curvedAnimation =
            CurvedAnimation(parent: animation, curve: curve);

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  static ProfileRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondAnimation) => MyProfilePage(),
      transitionsBuilder: (context, animation, secondAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        final tween = Tween(begin: begin, end: end);
        final curvedAnimation =
            CurvedAnimation(parent: animation, curve: curve);

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }
}

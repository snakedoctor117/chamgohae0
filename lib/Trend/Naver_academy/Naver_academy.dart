import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Naver_academy extends StatelessWidget {
  const Naver_academy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Text('네이버 학술정보'),
        actions: <Widget>[
          Container(
            width: 180,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: InkWell(
              onTap: () {
                final uri =
                Uri.parse('https://academic.naver.com/trend/category.naver');
                launchUrl(uri);
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: const Color(0xffFFFFFF),
                ),
                child: const Text(
                  '사이트 이동',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w900,
                    color: Color(0xff002244),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            child: Image.asset('assets/Naver_academy/슬라이드0001.png'),
          ),
          SizedBox(
            child: Image.asset('assets/Naver_academy/슬라이드0002.png'),
          ),
          SizedBox(
            child: Image.asset('assets/Naver_academy/슬라이드0003.png'),
          ),
          SizedBox(
            child: Image.asset('assets/Naver_academy/슬라이드0004.png'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class google_trend extends StatelessWidget {
  const google_trend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('구글 트렌드'),
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
                Uri.parse('https://trends.google.com/trends/');
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
            child: Image.asset('assets/google_trend/슬라이드0001.png'),
          ),
          SizedBox(
            child: Image.asset('assets/google_trend/슬라이드0002.png'),
          ),
          SizedBox(
            child: Image.asset('assets/google_trend/슬라이드0003.png'),
          ),
          SizedBox(
            child: Image.asset('assets/google_trend/슬라이드0004.png'),
          ),
          SizedBox(
            child: Image.asset('assets/google_trend/슬라이드0005.png'),
          ),
        ],
      ),
    );
  }
}

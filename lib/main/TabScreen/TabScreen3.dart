import 'package:flutter/material.dart';
import 'package:chamgohae0/main/QnAPage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:chamgohae0/main/Privacy.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TabScreen3(),
    );
  }
}

class TabScreen3 extends StatefulWidget {
  const TabScreen3({super.key,});



  @override
  State<TabScreen3> createState() => _TabScreen3State();
}

class _TabScreen3State extends State<TabScreen3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.contact_support,
              color: Colors.grey[850],
            ),
            title: const Text('카카오 문의하기'),
            onTap: () {
              final uri = Uri.parse('http://pf.kakao.com/_wDpGG');
              launchUrl(uri);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.question_answer,
              color: Colors.grey[850],
            ),
            title: const Text('FAQ'),
            onTap: () {
              print('Q&A is clicked');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return  QnAPage();
                }),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.grey[850],
            ),
            title: const Text('개인정보 처리방침'),
            onTap: () {
              print('Privacy is clicked');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const Privacy();
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
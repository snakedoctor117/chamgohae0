import 'package:chamgohae0/Book/Society/Cnc/Cnc.dart';
import 'package:chamgohae0/Book/Society/KRpia/Kpia.dart';
import 'package:chamgohae0/Book/Society/Kossda/Kossda.dart';
import 'package:chamgohae0/Book/Society/Ksdc/Ksdc.dart';
import 'package:flutter/material.dart';

class Homework extends StatelessWidget {
  const Homework({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('과제 도움 사이트',
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(5.0),
                margin: const EdgeInsets.all(5.0),
              ),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                    side: const BorderSide(color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Kossda();
                          }
                      ),
                    );
                  },
                  child:
                  const Text('구글 트렌드'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                    side: const BorderSide(color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Ksdc();
                          }
                      ),
                    );
                  },
                  child:
                  const Text('네이버 학술정보 연구트렌드 분석'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                    side: const BorderSide(color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Cnc();
                          }
                      ),
                    );
                  },
                  child:
                  const Text('네이버 데이터랩'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                    side: const BorderSide(color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const Cnc();
                          }
                      ),
                    );
                  },
                  child:
                  const Text('Nature'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                    side: const BorderSide(color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const KRpia();
                          }
                      ),
                    );
                  },
                  child:
                  const Text('IT FIND'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(30.0),
                    side: const BorderSide(color: Color(0xffB3995D),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),

                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const KRpia();
                          }
                      ),
                    );
                  },
                  child:
                  const Text('블랙키위'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

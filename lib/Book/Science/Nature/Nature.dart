import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Nature extends StatelessWidget {
  const Nature({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> howuse = [
      "사이트 설명",
      "사이트 사용법",
      "사이트 연계 확인",
    ];

    return DefaultTabController(
      length: howuse.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Nature'),
          actions: <Widget>[
            Container(
              width: 180,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: InkWell(
                onTap: () {
                  final uri = Uri.parse('https://www.nature.com/');
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
          bottom: TabBar(
            tabs: List.generate(
                howuse.length,
                    (index) => Tab(
                  text: howuse[index],
                )),
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(25, 10, 25, 5),
                  child: const Text(
                    "Nature / 해외 자연과학 학술지",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    "세계 3대 학술지로 불리는 해외에서 저명한 종합 과학 저널",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(25, 10, 25, 5),
                  child: const Text(
                    "사이트 특징",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 4, 10, 0),
                  child: const Text(
                    "- 과학과 관련된 논문뿐만이아니라 최신 뉴스, 리뷰, 분석 등 다양한 자료를 얻을 수 있음",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 3),
                  child: const Text(
                    "- 동영상 자료 또한 많으니 발표자료로 활용할 수 있음",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                SizedBox(
                  child: Image.asset('assets/Nature/슬라이드0002.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Nature/슬라이드0003.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Nature/슬라이드0004.png'),
                ),
                SizedBox(
                  child: Image.asset('assets/Nature/슬라이드0005.png'),
                ),
              ],
            ),
            Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "위 사이트는 교내 IP 또는, 귀하 학교 도서관 홈페이지에서 접속하시기 바랍니다",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'NotoSansKR',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      margin: const EdgeInsets.all(5.0),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

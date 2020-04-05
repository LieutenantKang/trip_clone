import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _screenShare = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.blueGrey[800])
          ),
          title: Text(
            '설정',
            style: TextStyle(fontSize: 18, color: Colors.blueGrey[800]),
          )
      ),
      body: ListView(
          children: <Widget>[
            settingList('언어', '한국어'),
            settingList('국가 또는 지역', '대한민국'),
            settingList('기준통화', 'KRW'),
            settingList('단위', '미터법(km, m²)'),
            settingList('온도 눈금', '섭씨 (°C)'),
            Divider(endIndent: 17,),
            settingList('알림', ''),
            ListTile(
              title: Text('스크린샷 공유', style: TextStyle(fontSize: 16, color: Colors.blueGrey[800]),),
              trailing: Switch(
                value: _screenShare,
                onChanged: (value) {
                  setState(() {
                    _screenShare = value;
                  });
                },
                activeTrackColor: Colors.blue,
                activeColor: Colors.white,
              ),
              contentPadding: EdgeInsets.only(left: 16 , right: 2),
            ),
            settingList('QR코드 스캔', ''),
            Divider(indent: 17 ,endIndent: 17,),
            settingList('트립닷컴앱 평가하기', ''),
            settingList('이용약관', ''),
            settingList('개인정보 처리방침', ''),
            settingList('버전', '7.6.3'),
          ],
        ),
      );
  }
}

ListTile settingList(String name, String feature){
  return ListTile(
    title: Text(name, style: TextStyle(fontSize: 16, color: Colors.blueGrey[800]),),
    trailing: Text(feature, style: TextStyle(fontSize: 16, color: Colors.blueGrey),),
  );
}

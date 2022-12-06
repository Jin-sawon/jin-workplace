import 'package:flutter/material.dart';

void main() => runApp(const MyApp());



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '연습',
      theme: ThemeData(
      ),
      home: Scaffold(
        appBar: AppBar(
            title: const Text('저는 연습용 샘플입니다?')

        ),
        body: const Center(
          child: Image(image: NetworkImage(
              "https://thx.sfo2.cdn.digitaloceanspaces.com/wr/coverimages/m_11/%EC%98%88%ED%96%89%EC%97%B0%EC%8A%B5_11.jpg")),

        ),
           //const Center(child: Text('한국어도 되니?'))
        ),
       );
  }
}

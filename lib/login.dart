import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: const Text('파이어베이스')
      ),
      body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(color: Colors.red),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(width:200, height: 200, color: Colors.blue,),
                Stack(children: <Widget> [
                  Form(child: Column(
                    children: <Widget>[
                      TextFormField(),
                      TextFormField(),
                      const Text("비밀번호를 잊으셨습니까?"),
                    ],
                  )),
                  Container(width:100, height: 50, color: Colors.black,),
                ],),
                Container(height: size.height*0.1,),
                const Text("계정이 없으십니까? "),
                const Text("지금바로 회원가입을 해보세요!"),
                Container(height: size.height*0.06,)

              ],
            )
          ]
      ),
      //const Center(child: Text('한국어도 되니?'))
    );
  }
}

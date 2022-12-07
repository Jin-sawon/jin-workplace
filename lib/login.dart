import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: <Widget>[
        Container(color: Colors.white),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            _logoImage(),
            Stack(
              children: <Widget>[
                _inputForm(size),
                _authButton(size),
              ],
            ),
            Container(
              height: size.height * 0.1,
            ),
            const Text("계정이 없으십니까? "),
            const Text("지금바로 회원가입을 해보세요!"),
            Container(
              height: size.height * 0.05,
            )
          ],
        )
      ]),
    );
  }

  Widget _logoImage() =>  const Expanded(
  child: Padding(
  padding: EdgeInsets.only(top: 40, left: 33, right: 33),
  child: FittedBox(
  fit: BoxFit.contain,
  child: CircleAvatar(
  backgroundImage: NetworkImage("https://picsum.photos/200"),
  ),
  ),
  ),
  );

  //로그인 버튼
  Widget _authButton(Size size) => Positioned(
        left: size.width * 0.19,
        right: size.width * 0.19,
        top: size.width * 0.478,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: Colors.deepPurple,
            padding: const EdgeInsets.all(10),
            textStyle: const TextStyle(fontSize: 17, color: Colors.white),
          ),
          child: const Text(" 로그인 "),
        ),
      );

  //로그인창
  Widget _inputForm(Size size) => Padding(
        padding: EdgeInsets.all(size.width * 0.06),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
          elevation: 7.7,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 12.0, right: 16.0, top: 12, bottom: 40),
            child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        labelText: "Email",
                      ),
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "이메일을 입력 해 주세요";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.account_tree),
                        labelText: "Password",
                      ),
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "비밀번호를 입력해주세요.";
                        }
                        return null;
                      },
                    ),
                    Container(
                      height: 3,
                    ),
                    const Text("비밀번호를 잊으셨습니까?"),
                  ],
                )),
          ),
        ),
      );
}
// Container(width:100, height: 50, color: Colors.black,),

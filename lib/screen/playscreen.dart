import 'package:flutter/material.dart';

class playscreen extends StatefulWidget {
  const playscreen({super.key});

  @override
  State<playscreen> createState() => _playscreenState();
}

class _playscreenState extends State<playscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color(0xffe1e0e3),
                spreadRadius: 10,
                blurRadius: 10,
              )
            ]),
            child: Image.asset('asset/img/bg.jpg', fit: BoxFit.cover),
          ),
          Container(
            height: 311,
            width: double.infinity,
            // color: Color(0xffe1e0e3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 50,
                    child: Image.asset(
                      'asset/img/Logo.png',
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Fruzz',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                    ),
                    Text(
                      'digital',
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: Container(
                    height: 60,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Color(0xff1e232c),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                        child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/register');
                  },
                  child: Container(
                    height: 60,
                    width: 330,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff1e232c)),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                        child: Text(
                      'Register',
                      style: TextStyle(color: Color(0xff1e232c)),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Countinue as a Guest',
                    style: TextStyle(color: Color(0xff35c1c2,),fontSize: 13,decoration: TextDecoration.underline,decorationColor: Color(0xff35c1c2,))),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

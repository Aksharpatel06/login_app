import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}
GlobalKey<FormState> formkey=GlobalKey<FormState>();
bool isPwdshow=false;
TextEditingController txtemail = TextEditingController();
TextEditingController txtpwd = TextEditingController();
class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15,10,15,0),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/');
                      setState(() {
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border:Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Text('Welcome back! Glad  to see you, Again!',overflow:TextOverflow.clip,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30),),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2,0,2,0),
                    child: Container(
                      color: Color(0xfff7f8f9),
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return 'please enter your email';
                          }
                        },
                        controller: txtemail,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.newline,
                        decoration: InputDecoration(
                          // label: Text('Email',style: TextStyle(color: Colors.grey),),
                          hintText: 'Enter your email',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xffe8ecf4),width: 1),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xffe8ecf4)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2,0,2,0),
                    child: Container(
                      color: Color(0xfff7f8f9),
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                            {
                              return 'please enter your password';
                            }
                        },
                        keyboardType: TextInputType.visiblePassword,
                        controller: txtpwd,
                        obscureText: (!isPwdshow)?true:false,
                        obscuringCharacter: '*',
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          // label: Text('Email',style: TextStyle(color: Colors.grey),),
                          hintText: 'Enter your password',
                          suffixIcon:(!isPwdshow) ?InkWell(onTap: () {
                            isPwdshow = true;
                            setState(() {
                            });
                          },child: Icon(Icons.remove_red_eye_sharp)):
                          InkWell(onTap: () {
                            isPwdshow = false;
                            setState(() {
                            });
                          },child: Icon(Icons.visibility_off)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xffe8ecf4),width: 1),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Color(0xffe8ecf4)),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 205.0),
                    child: Text('Forget Password ?',style: TextStyle(color: Colors.grey),),
                  ),
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: () {
                      setState(() {
                        formkey.currentState!.validate();
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 350,
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
                  SizedBox(height:25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 0.5,
                        width: 110,
                        color: Colors.grey,
                      ),
                      Text(' Or Login with ',style: TextStyle(color: Colors.grey),),
                      Container(
                        height: 0.5,
                        width: 110,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset('asset/img/icon1.png'),
                      ),
                      Container(
                        height: 60,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset('asset/img/icon2.png'),
                      ),
                      Container(
                        height: 60,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset('asset/img/icon3.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 120,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don’t have an account? ',style:TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/register');
                          setState(() {
                          });
                        },
                          child: Text('Register Now',style:TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Color(0xff35c2c1)),))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

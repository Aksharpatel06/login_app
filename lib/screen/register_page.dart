

import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

GlobalKey<FormState> formkey=GlobalKey<FormState>();


TextEditingController txtname = TextEditingController();
TextEditingController txtemail = TextEditingController();
TextEditingController txtpwd = TextEditingController();
TextEditingController txtconpwd = TextEditingController();
bool conpwds=true;


class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    String? name,email,pwd,conpwd;
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
                  SizedBox(height: 15,),
                  Text('Hello! Register to get started',overflow:TextOverflow.clip,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30),),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2,0,2,0),
                    child: Container(
                      color: Color(0xfff7f8f9),
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return 'please enter your name';
                          }
                        },
                        controller: txtname,
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          label: Text('Username',style: TextStyle(color: Colors.grey),),
                          // hintText: 'Enter the username',
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
                            return 'please enter your email';
                          }
                        },
                        controller: txtemail,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.newline,
                        decoration: InputDecoration(
                          label: Text('Email',style: TextStyle(color: Colors.grey),),
                          // hintText: 'Enter the email',
                          // suffixIcon: Icon(Icons.remove_red_eye_sharp),
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
                        controller: txtpwd,
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          label: Text('Password',style: TextStyle(color: Colors.grey),),
                          // hintText: 'Enter the create password',
                          // suffixIcon: Icon(Icons.remove_red_eye_sharp),
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
                          else if(value!=txtpwd.text)
                            {
                              return 'password not same';
                            }
                        },
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.visiblePassword,
                        controller:txtconpwd,
                        decoration: InputDecoration(
                          label: Text('Confirm password',style: TextStyle(color: Colors.grey),),
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
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: () {
                      email=txtemail.text;
                      name=txtname.text;
                      pwd=txtpwd.text;
                      conpwd=txtconpwd.text;

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
                            'Register',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  SizedBox(height:20,),
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
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don’t have an account? ',style:TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                      InkWell(onTap: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                          child: Text('login Now',style:TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Color(0xff35c2c1)),))
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

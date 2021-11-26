import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  bool _isLoadig = false;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();


  @override

  bool isShown = true;
  bool rememberpwd = false;

  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Stack(children: [
          Container(
              height: double.infinity,
              width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFF8F8F9),
                    Color(0xFFF8F8F9),
                    Color(0xFFF8F8F9),
                    Color(0xFFF8F8F9),
                  ]),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
          Container(
              child: const Center(
                child: Text(
                  " ",
                  style: TextStyle(fontSize: 38, ),
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assest/arrow-down.png",
                  ),
                ),
              )
          ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child:
                  TextField(
                  controller: emailC,
                  decoration: const InputDecoration(
                      labelText: 'email',

                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.attach_email,
                        color: Colors.grey,
                      ),
                      filled: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  obscureText: isShown,
                  controller: passcontroller,
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isShown = !isShown;
                          });
                        },
                        child: Icon(
                            isShown ? Icons.visibility_off : Icons.visibility),
                      ),
                      labelText: 'password',
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buildForgetPassword(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: SizedBox(height: 30,
                      width: 170,
                      child: ElevatedButton(onPressed: (){
                        // print(emailC.text);
                        // print(passcontroller.text);
                        // login(emailC.text , passcontroller.text);
                      }, child: Text("Login"))
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: SizedBox(height: 30,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(

                          backgroundColor:
                              MaterialStateProperty.all<Color>(const Color(0xFFFDB913)),


                        ),
                        child: const Text('Rig',
                            style: TextStyle(
                              fontSize: 25,

                                color: Colors.white)),
                      ),
                    ),
                  ),

                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget buildRememberassword() {
    return Container(
      height: 20,
      child: Row(
        children: [
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                value: rememberpwd,
                checkColor: Colors.blueGrey,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    rememberpwd = value!;
                  });
                },
              )),
          const Text(
            "Remember me",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget buildForgetPassword() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Container(
        alignment: Alignment.centerRight,
        child: TextButton(
          child: const Text("Forget Password !",
              style: TextStyle( color: Colors.black,)),
          onPressed: () {},
        ),
      ),
    );
  }

}

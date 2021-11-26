import 'package:easy_gift/Home/screen/home.dart';
import 'package:easy_gift/shared_text.dart';
import 'package:flutter/material.dart';
class loginn extends StatefulWidget {
  const loginn({Key? key}) : super(key: key);

  @override
  _loginnState createState() => _loginnState();
}
TextEditingController emailcontroller = TextEditingController();
TextEditingController passcontroller = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


class _loginnState extends State<loginn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(
              children: [
                Container(
                  color: const Color(0xffF8F8F9),
                  width: double.infinity,
                  height: double.infinity,
                ),
                CustomScrollView(
                  slivers: [
                    SliverFillRemaining(
                        hasScrollBody: false,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(
                              image: AssetImage("assest/user.png"),
                              width: 200,
                              height: 200,
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: emailcontroller,
                                      validator: (value){
                                        if (value!.isEmpty)
                                          return "NO isEmpty ";
                                      },
                                      decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(
                                          Icons.perm_identity,
                                          color: Color(0xff808080),
                                          size: 30,
                                        ),
                                        labelText: ("User Name"),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xff848484), width: 1),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xff848484),
                                              width: 1,
                                            )),
                                      ),
                                      cursorHeight: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: passcontroller,
                                      validator: (value){
                                        if (value!.isEmpty)
                                          return "NO isEmpty ";
                                      },
                                      decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(
                                          Icons.visibility_off,
                                          color: Color(0xff808080),
                                          size: 30,
                                        ),
                                        labelText: ("Password"),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xff848484), width: 1),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xff848484),
                                              width: 1,
                                            )),
                                      ),
                                      cursorHeight: 30,
                                      keyboardType: TextInputType.number,
                                      obscureText: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),


                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: const Text(
                                  "Forgot Password ?",
                                  style: TextStyle(color: Colors.black),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      SharedText.userName=emailcontroller.text.toString();
                                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>home()));
                                    }
                                  },
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  textColor: Colors.white,
                                  color: Color(0xffFDB913),
                                  minWidth: 170,
                                  padding: EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  child: Text("Register", style: TextStyle(fontSize: 17)),
                                  textColor: Colors.white,
                                  color: Color(0xffadc2d9),
                                  minWidth: 170,
                                  padding: EdgeInsets.all(15),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ],
                            ),
                            const Image(
                              image: AssetImage("assest/logo-white.png"),
                              width: 200,
                              height: 200,
                            ),
                          ],
                        )),
                  ],
                )
              ],
            )
        )
    );
  }
}

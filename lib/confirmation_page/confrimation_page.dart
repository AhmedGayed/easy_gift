import 'package:easy_gift/Drawar/widget/navigation_drawer_widget.dart';
import 'package:easy_gift/Home/screen/home.dart';
import 'package:easy_gift/ReusableComponents/reusable_components.dart';
import 'package:easy_gift/actionn_page/actionn_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import '../shared_text.dart';

class ConfiermPage extends StatefulWidget {
  String pageTitle;
  String amount;
   ConfiermPage({Key? key,required this.pageTitle,required this.amount}) : super(key: key);

  @override
  _ConfiermPageState createState() => _ConfiermPageState();
}

class _ConfiermPageState extends State<ConfiermPage> {
  var height, width;
  bool isMale = true;
  int Amount = 20;
  int weight = 50;
  var qrstr = "let's Scan it";
  bool _hasBeenPressed = false;
  bool _25 = false;
  bool _50 = false;
  bool _100 = false;
  bool _150 = false;
  bool _200 = false;
  var name = "REFUNDING";
  int number = 0;

  void addnumber() {
    setState(() {
      number++;
    });
  }

  void subnumber() {
    setState(() {
      number--;
    });
  }

  var numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery
        .of(context)
        .size
        .height;
    width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title:const Text("Confirem "),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF858585),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                child: Container(
                  height: 330,
                  color: Colors.transparent,
                  width: double.infinity,
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: 280 ,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const   SizedBox(
                              height: 50,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Confirm Your Action",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35, color: Color(0xFF858585)),
                              ),
                            ),


                            Row(
                              children: [

                              ],
                            ),
                            const   SizedBox(height: 50,),
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    Padding(
                                      padding:  const EdgeInsets.only(left: 20),
                                      child: Expanded(
                                        child: Text("Do You Want To ${widget.pageTitle}\n\nThis Amount: ${widget.amount} ", style:const TextStyle(
                                            fontSize: 25,
                                            color: Color(0xFF858585),
                                            fontWeight: FontWeight.bold),),
                                      ),
                                    )

                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [



                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 100,
                          width: 240,
                          child: Stack(
                            children: [
                              Image.asset(
                                "assest/card.png",
                                width: 240,
                                height: 120,

                                fit: BoxFit.contain,
                              ),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 40.0,),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(SharedText.userName),
                                        const SizedBox(height: 10,),
                                        Text(SharedText.branchName),
                                      ],
                                    ),
                                  ))
                            ],
                          )),
                    ),
                  ],),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>home()));
                  },
                  child: Text('Confirm'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFfdb913),
                      textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(double.infinity, 45)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Canel'),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffadc2d9),

                      textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(double.infinity, 45)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



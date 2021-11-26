import 'package:easy_gift/Drawar/widget/navigation_drawer_widget.dart';
import 'package:easy_gift/ReusableComponents/reusable_components.dart';
import 'package:easy_gift/confirmation_page/confrimation_page.dart';
import 'package:easy_gift/shared_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'common_button.dart';
import 'common_quntitiy_button.dart';

// ignore: must_be_immutable
class ActionPage extends StatefulWidget {
  String pageTitle;

  ActionPage({Key? key, required this.pageTitle}) : super(key: key);

  @override
  _ActionPageState createState() => _ActionPageState();
}

class _ActionPageState extends State<ActionPage> {
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
  int number = 0;

  void addnumber() {
    setState(() {
      number++;
    });
  }

  void subnumber() {
    setState(() {
      if(number >0)
      number--;
    });
  }

  var numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(widget.pageTitle),
        actions:const [  Padding(
          padding:  EdgeInsets.all(8.0),
          child:  Icon(Icons.settings),
        )],
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF858585),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                child: Container(
                  height: 420,
                  color: Colors.transparent,
                  width: double.infinity,
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 360,
                        width: double.infinity,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Select Amount",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFF858585),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Enter you Amount here ",
                                    style: TextStyle(
                                        fontSize: 20, color: Color(0xFF858585)),
                                  ),
                                ),
                                const Divider(
                                  color: Colors.grey,
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Select Value",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xFF858585),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    CommonQuntityButton(
                                        iconData: Icons.add,
                                        onPressed: () => addnumber()),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 100,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: Center(child: Text("$number")),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    CommonQuntityButton(
                                        iconData: Icons.remove,
                                        onPressed: () => subnumber()),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CommonButton(
                                          value: '5 L.E',
                                          onPressed: () {
                                            if (_hasBeenPressed) {
                                              number -= 5;
                                            } else {
                                              number += 5;
                                            }
                                            setState(() {
                                              _hasBeenPressed =
                                                  !_hasBeenPressed;
                                            });
                                          },
                                          isPressed: _hasBeenPressed,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CommonButton(
                                          value: '25 L.E',
                                          onPressed: () {
                                            if (_25) {
                                              number -= 25;
                                            } else {
                                              number += 25;
                                            }
                                            setState(() => _25 = !_25);
                                          },
                                          isPressed: _25,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CommonButton(
                                          value: '50 L.E',
                                          onPressed: () {
                                            if (_50) {
                                              number -= 50;
                                            } else {
                                              number += 50;
                                            }
                                            setState(() => _50 = !_50);
                                          },
                                          isPressed: _50,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CommonButton(
                                          value: '100 L.E',
                                          onPressed: () {
                                            if (_100) {
                                              number -= 100;
                                            } else {
                                              number += 100;
                                            }
                                            setState(() => _100 = !_100);
                                          },
                                          isPressed: _100,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CommonButton(
                                          value: '150 L.E',
                                          onPressed: () {
                                            if (_150) {
                                              number -= 150;
                                            } else {
                                              number += 150;
                                            }
                                            setState(() => _150 = !_150);
                                          },
                                          isPressed: _150,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CommonButton(
                                          value: '200 L.E',
                                          onPressed: () {
                                            if (_200) {
                                              number -= 200;
                                            } else {
                                              number += 200;
                                            }
                                            setState(() => _200 = !_200);
                                          },
                                          isPressed: _200,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ElevatedButton(
                  onPressed: scanQr,
                  child: Text('Scanner'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFfdb913),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(double.infinity, 45)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ConfiermPage(pageTitle: widget.pageTitle,amount:number.toString() ,)));
                  },
                  child: Text('next'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFfdb913),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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

  Future<void> scanQr() async {
    try {
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrstr = value;
        });
      });
    } catch (e) {
      setState(() {
        qrstr = 'unable to read this';
      });
    }
  }
}

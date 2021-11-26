import 'package:easy_gift/Drawar/widget/navigation_drawer_widget.dart';
import 'package:easy_gift/ReusableComponents/reusable_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class actionn_page extends StatefulWidget {
  const actionn_page({Key? key}) : super(key: key);

  @override
  _actionn_pageState createState() => _actionn_pageState();
}

class _actionn_pageState extends State<actionn_page> {
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
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("$name"),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF858585),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                child: Container(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "assest/card.png",
                          width: 240,
                          height: 160,
                        ),
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
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  "Select Value",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xFF858585),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                onPressed: addnumber,
                                child: Text('+'),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xFFfdb913),
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    minimumSize: Size(20, 20)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 80,
                                height: 20,
                                decoration: BoxDecoration(
                                  border:  Border.all(
                                    color: Colors.blue,
                                  ),

                                ),
                                child: Center(
                                    child: Text("$number")),

                              ),

                              // Container(
                              //   width: 70,
                              //   height: 35,
                              //   child: TextFormField(
                              //     initialValue: "2",
                              //     textAlign: TextAlign.center,
                              //     textAlignVertical: TextAlignVertical.center,
                              //     decoration: const InputDecoration(
                              //       contentPadding: EdgeInsets.all(5),
                              //       enabledBorder: OutlineInputBorder(
                              //         borderSide: BorderSide(
                              //           color: Color(0xFFdfdede),
                              //         ),
                              //       ),
                              //       focusedBorder: OutlineInputBorder(
                              //         borderSide: BorderSide(
                              //           color: Color(0xFFdfdede),
                              //         ),
                              //       )
                              //     ),
                              //   ),
                              //
                              // ),

                              // Text("$number"),
                              SizedBox(
                                width: 5,
                              ),

                              ElevatedButton(
                                onPressed: subnumber,
                                child: Text('-'),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xFFfdb913),
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    minimumSize: Size(20, 20)),
                              ),


                            ],
                          ),
                          SizedBox(height: 50,),
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 5,),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                      child: ElevatedButton(
                                        onPressed: () => setState(() => _hasBeenPressed = !_hasBeenPressed),
                                        child: Text('5 L.E',style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),),
                                        style: ElevatedButton.styleFrom(
                                            primary: _hasBeenPressed ?   Color(0xFFf58220):Color(0xFFdfedfd),
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            shape:
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(5)),
                                            minimumSize: Size(90, 40)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5,),


                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                      child: ElevatedButton(
                                        onPressed: () => setState(() => _25 = !_25),
                                        child: Text('25 L.E',style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),),
                                        style: ElevatedButton.styleFrom(
                                            primary: _25 ?   Color(0xFFf58220):Color(0xFFdfedfd),
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            shape:
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(5)),
                                            minimumSize: Size(90, 40)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5,),

                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                      child: ElevatedButton(
                                        onPressed: () => setState(() => _50 = !_50),
                                        child: Text('50 L.E',style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),),
                                        style: ElevatedButton.styleFrom(
                                            primary: _50 ?   Color(0xFFf58220):Color(0xFFdfedfd),
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            shape:
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(5)),
                                            minimumSize: Size(90, 40)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5,)

                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 15,),
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 5,),

                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                      child: ElevatedButton(
                                        onPressed: () => setState(() => _100 = !_100),
                                        child: Text('100 L.E',style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),),
                                        style: ElevatedButton.styleFrom(
                                            primary: _100 ?   Color(0xFFf58220):Color(0xFFdfedfd),
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            shape:
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(5)),
                                            minimumSize: Size(90, 40)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5,),

                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                      child: ElevatedButton(
                                        onPressed: () => setState(() => _150 = !_150),
                                        child: Text('150 L.E',style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),),
                                        style: ElevatedButton.styleFrom(
                                            primary: _150 ?   Color(0xFFf58220):Color(0xFFdfedfd),
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            shape:
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(5)),
                                            minimumSize: Size(90, 40)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5,),

                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                      child: ElevatedButton(
                                        onPressed: () => setState(() => _200 = !_200),
                                        child: Text('500 L.E',style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),),
                                        style: ElevatedButton.styleFrom(
                                            primary: _200 ?   Color(0xFFf58220):Color(0xFFdfedfd),
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            shape:
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(5)),
                                            minimumSize: Size(90, 40)),
                                      ),
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 600,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: ElevatedButton(
                  onPressed: scanQr,
                  child: Text('Scanner'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFfdb913),
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

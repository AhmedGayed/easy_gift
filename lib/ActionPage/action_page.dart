import 'package:easy_gift/Drawar/widget/navigation_drawer_widget.dart';
import 'package:easy_gift/ReusableComponents/reusable_components.dart';
import 'package:easy_gift/Scan/readqr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class action_page extends StatefulWidget {
  const action_page({Key? key}) : super(key: key);

  @override
  _action_pageState createState() => _action_pageState();
}

class _action_pageState extends State<action_page> {
  var height, width;
  bool isMale = true;
  int Amount = 20;
  int weight = 50;
  var qrstr = "let's Scan it";
  bool _hasBeenPressed = false;
  var name = "REFUNDING";

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
      backgroundColor: Color(0xFFF8F8F9),
      body: Column(
        children: [
          Container(
              child: const Center(
                child: Text(
                  " ",
                  style: TextStyle(fontSize: 38, ),
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(

                  image: AssetImage(
                    "assest/card.png",
                  ),
                ),
              )
          ),
          Expanded(
              flex: 3,
              child: buildContainer(
                  myChild: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      buildContainer(
                          myChild: buildLastColumn(
                              label: "",
                              Num: Amount,
                              decrement: () {
                                setState(() {
                                  Amount--;
                                });
                              },
                              increment: () {
                                setState(() {
                                  Amount++;
                                });
                              })),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing:7.0,
                    runSpacing:6.0,
                    children: <Widget>[

                      myChips("5 L.E"),
                      SizedBox(height: 20,
                        width: 20,),

                      myChips("25 L.E"),
                      SizedBox(height: 20,
                      width: 20,),

                      myChips("50 L.E"),
                      SizedBox(height: 20,),
                      myChips("100 L.E"),
                      SizedBox(height: 20,),

                      myChips("150 L.E"),
                      SizedBox(height: 20,),

                      myChips("200 L.E"),
                    ],
                  ),


                  categoryDivider(),


                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                    ],
                  ),
                ],
              ),
              ),
          ),
          // Expanded(
          //     flex: 3,
          //     child: Row(
          //       children: [
          //         Expanded(
          //             child: buildContainer(
          //                 myChild: buildLastColumn(
          //                     label: "Weight",
          //                     Num: weight,
          //                     decrement: () {
          //                       setState(() {
          //                         weight--;
          //                       });
          //                     },
          //                     increment: () {
          //                       setState(() {
          //                         weight++;
          //                       });
          //                     }))),
          //         SizedBox(
          //           width: 20,
          //         ),
          //         Expanded(
          //             child: buildContainer(
          //                 myChild: buildLastColumn(
          //                     label: "Age",
          //                     Num: age,
          //                     decrement: () {
          //                       setState(() {
          //                         age--;
          //                       });
          //                     },
          //                     increment: () {
          //                       setState(() {
          //                         age++;
          //                       });
          //                     }))),
          //       ],
          //     )),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: scanQr,
                child: Text('Scanner'),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.yellow,
                  textStyle:
                      TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  minimumSize: Size.fromWidth(double.infinity),
                ),
              ),
            ),
          ),
        ],
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
  Container categoryDivider() {
    return Container(
      height: 30.0,
      width: MediaQuery
          .of(context)
          .size
          .width,
      color: Colors.grey,
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
    );
  }
  Container myColoredChips(String chipName) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: RaisedButton(
              color: new Color(0xffeadffd),
              child: Text(chipName,
                style:TextStyle(
                  color: new Color(0xff6200ee),
                ),),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    10.0),)
          ),
        )
    );
  }

  //Grey Chips
  Container myChips(String chipName) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 1,right: 0),
        child: ElevatedButton(
          onPressed: () => setState(() => _hasBeenPressed = !_hasBeenPressed),

            child: Text(chipName),
        style: ElevatedButton.styleFrom(
          primary: _hasBeenPressed ? Colors.red : Colors.teal,
          textStyle:
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          minimumSize: Size(45, 45)
        ),
    ),
      ),
    );
  }

}

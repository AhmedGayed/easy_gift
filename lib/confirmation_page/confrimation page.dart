import 'package:easy_gift/Drawar/widget/navigation_drawer_widget.dart';
import 'package:easy_gift/Home/screen/home.dart';
import 'package:easy_gift/ReusableComponents/reusable_components.dart';
import 'package:easy_gift/actionn_page/actionn_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class conformation_page extends StatefulWidget {
  const conformation_page({Key? key}) : super(key: key);

  @override
  _conformation_pageState createState() => _conformation_pageState();
}

class _conformation_pageState extends State<conformation_page> {
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
        title: Text("$name"),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF858585),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                child: Container(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
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
                          SizedBox(height: 50,),
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [

                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text("Do You Want To \n PURCHASE This Amount: ", style: TextStyle(
                                        fontSize: 25,
                                        color: Color(0xFF858585),
                                        fontWeight: FontWeight.bold),),
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
                    ],
                  ),
                  height: 300 ,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>actionn_page()));
                  },
                  child: Text('Canel'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffadc2d9),

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



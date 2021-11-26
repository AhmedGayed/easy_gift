import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //Colored Chips
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
                    30.0),)
          ),
        )
    );
  }

  //Grey Chips
  Container myChips(String chipName) {
    return Container(
      child: RaisedButton(
          color: Color(0xffededed),
          child: Text(chipName,
            style:TextStyle(
              color: new Color(0xff6200ee),
            ),),
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  30.0))
      ),
    );
  }

  //Divider
  Container categoryDivider() {
    return Container(
      height: 1.0,
      width: MediaQuery
          .of(context)
          .size
          .width,
      color: Colors.grey,
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add,
          color: Colors.white,
        ),
        title: Text("Filter results"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: () {
            //
          }),
        ],
      ),
      body: Column(
        children: <Widget>[

          //Offer heading
          Container(
              child:Padding(
                padding:const EdgeInsets.all(16.0),
                child:Text(
                  'Offers',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
          ),

          //Chips
          Wrap(
            direction: Axis.horizontal,
            spacing:10.0,
            runSpacing:5.0,
            children: <Widget>[
              myChips("Sales"),
              myChips("Discounts"),
              myChips("Clearance"),
              myChips("gifts"),
              myChips("summersale"),
            ],
          ),

          categoryDivider(),
        ],),
    );
  }
}

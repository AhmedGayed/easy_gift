// method returns our Custom Button
import 'package:flutter/material.dart';
var labelFontSize = 25.0;
var NumberFontSize = 45.0;
var labelTextStyle = TextStyle(fontSize:labelFontSize);
var NumberTextStyle = TextStyle(fontSize:NumberFontSize,fontWeight: FontWeight.bold,color: Colors.white);
Widget buildMyButton({String? btnText, VoidCallback? ontap}){
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
       onTap: ontap,
      //(){
      //   print('Button is clicked');
      // },
      child: Container(
        child: Center(
          child: Text(btnText!,
          style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.blue,

            borderRadius: BorderRadius.circular(15)
        ),
      ),
    ),
  );
}
Widget buildContainer({Color containerColor = Colors.grey, Widget? myChild}){
  return
    Container(
      child: myChild,
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(15)
      ),
    );

}
Widget buildGenderColumn({required IconData iconData, required  String txt}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(iconData , size: 100 , color: Colors.black,),
      Text(txt.toUpperCase(),style:labelTextStyle)
    ],
  );
}
Widget buildLastColumn({ required String label,required int Num,VoidCallback? decrement,VoidCallback? increment }){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      //label text

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          ElevatedButton(onPressed: decrement, child: Icon(Icons.remove)),
          SizedBox(width: 10),
          Text(Num.toString(),style: NumberTextStyle,),
          SizedBox(width: 10),
          ElevatedButton(onPressed: increment, child: Icon(Icons.add)),

        ],
      )//Number text
    ],
  );
}
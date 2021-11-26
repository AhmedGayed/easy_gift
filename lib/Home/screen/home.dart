import 'package:easy_gift/ActionPage/action_page.dart';
import 'package:easy_gift/Drawar/page/people_page.dart';
import 'package:easy_gift/Drawar/page/user_page.dart';
import 'package:easy_gift/Drawar/widget/navigation_drawer_widget.dart';
import 'package:easy_gift/ReusableComponents/reusable_components.dart';
import 'package:easy_gift/actionn_page/actionn_page.dart';
import 'package:flutter/material.dart';

import '../../shared_text.dart';
class home extends StatefulWidget {
   home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(

        title: Text("Home"),


      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF8F8F9),
      body: Center(
        child: Stack(
            children: [
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
                      ]
                  ),
                ),
              ),
              Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(SharedText.userName),
                  Text("carfor 3obor"),
                  CircleAvatar(radius: 30, backgroundImage: AssetImage(
                    "assest/user.png",
                  ),),


                   buildMyButton(
                     btnText: "PURCHASING",

                     ontap: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>actionn_page()));
                     }
                   ),
                  SizedBox(
                    height: 20,
                  ),
                  buildMyButton(
                      btnText: "REFUNDING",
                      ontap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>actionn_page()));
                      }
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}

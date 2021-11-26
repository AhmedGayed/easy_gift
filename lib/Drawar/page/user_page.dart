import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final String name;


  const UserPage({
    Key? key,
    required this.name,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(name),
          centerTitle: true,
        ),
        body: Container(
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
                  "assest/user.png",
                ),
              ),
            )
        ),
      );
}

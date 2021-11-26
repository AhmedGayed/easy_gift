import 'package:flutter/material.dart';

class CommonQuntityButton extends StatelessWidget {
  IconData? iconData;
  Function()? onPressed;

  CommonQuntityButton({Key? key, this.iconData, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(
        iconData!,
        color: Colors.grey,
        size: 16,
      ),
      style: ElevatedButton.styleFrom(
          side: BorderSide(color: Colors.grey),
          primary: Colors.grey.shade50,
          elevation: 0,
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          minimumSize: const Size(25, 22)),
    );
  }
}

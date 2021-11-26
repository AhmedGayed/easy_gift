import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  String? value;
  Function()? onPressed;
  bool? isPressed;

  CommonButton({Key? key, this.value, this.onPressed, this.isPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: OutlinedButton(

          onPressed: onPressed,
          child: Text(
            value!,
            style: TextStyle(
                fontSize: 20,
                color:isPressed!
                    ? Colors.white
                    :Colors.black,
                fontWeight: FontWeight.w400),
          ),

          style: ElevatedButton.styleFrom(
              primary: isPressed!
                  ? const Color(0xFFf58220)
                  :Colors.transparent,
              textStyle:  TextStyle(
                  fontSize: 20,
                  color:isPressed!
                      ? Colors.white
                      :Colors.black,
                  fontWeight: FontWeight.w400),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              side:const BorderSide(color: Colors.grey, width: 1.0),
              minimumSize: const Size(90, 40)),
        ),
      ),
    );
  }
}

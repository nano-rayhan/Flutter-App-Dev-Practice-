import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  final String btnName;
  final Icon? icon;
  final Color bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;
  
  
  const RoundedButton({super.key, 
    required this.btnName,
    this.icon,
    this.bgColor = Colors.blue,
    this.textStyle,
    this.callBack
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      
      callBack!();
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: bgColor,
      shadowColor: bgColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        )
      )
    ), child: icon!=null ?Row(
      children: [
        icon!,
        Text(btnName, style: textStyle,)
      ],

    ): Text(btnName, style: textStyle,)
    );
  }
  
}
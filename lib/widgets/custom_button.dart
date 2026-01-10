import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final String text;
  final VoidCallback onPressed;
  
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
   
 
  });

  Widget build(BuildContext context){
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 27, 108, 179),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )
        ),
        onPressed: onPressed,
        child:Text(text, style: TextStyle(color: Colors.white, fontSize: 16))
        ),
    );
  }
  static Widget customOutlineButton({
    required String text,
    required VoidCallback onPressed,
    Color? borderColor,
    Color? textColor,
  }){
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: borderColor ?? const Color.fromARGB(255, 55, 55, 56),
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor ??
                borderColor ??
                const Color.fromARGB(255, 38, 39, 39),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
   
}
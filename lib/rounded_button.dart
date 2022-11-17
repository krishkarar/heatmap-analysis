import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  RoundedButton({
     required this.buttonTitle, required this.onClick
  });

  final String buttonTitle;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: MediaQuery.of(context).size.width - 80,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: [
              Color(0xfffd746c),
              Color(0xffff9068),
              Color(0xfffd746c)
            ])),
        child: Center(
          child:
              Text(
            buttonTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
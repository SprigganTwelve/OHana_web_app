import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({Key? key, this.heightValue = 80, this.widthValue = 80})
      : super(key: key);

  final double heightValue;
  final double widthValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightValue,
      width: widthValue,
      child: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
        backgroundColor: Colors.white,
      ),
    );
  }
}

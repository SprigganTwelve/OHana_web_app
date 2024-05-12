import 'package:flutter/material.dart';

class InputAtom extends StatelessWidget {
  final String placeholder;
  const InputAtom({super.key, this.placeholder = ''});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: TextField(
          decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: const TextStyle(color: Colors.grey),
              border: InputBorder.none,
              filled: true,
              fillColor: const Color(0xFFF0F2F2),
              focusedBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 117, 33, 243)))),
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          )),
    );
  }
}

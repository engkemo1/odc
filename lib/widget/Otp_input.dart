
import 'package:flutter/material.dart';
import 'package:odc/constants.dart';
class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;

  const OtpInput(this.controller, this.autoFocus,);

  @override
  Widget build(BuildContext context) {
    return
      Container(
          width: 50.0,
          height: 70.0,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12.0),

          ),
          child: Center(
            child: TextField(
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
              autofocus: autoFocus,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              controller: controller,
              maxLength: 1,
              cursorColor: Colors.orange,
              cursorRadius:Radius.circular(30),

              decoration: const InputDecoration(
                  border: InputBorder.none,

                  hintText: "*",
                  counterText: "",

                  hintStyle: TextStyle(color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold)),
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
            ),
          )


      );
  }
}
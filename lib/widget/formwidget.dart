import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormWidget extends StatelessWidget {
  String ic;
  FormWidget({Key? key, required this.ic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.black, width: 5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.black, width: 3),
            ),
            labelStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            // suffixStyle: TextStyle(fontSize: 15),
            suffixIconConstraints: BoxConstraints(
                minHeight: 25, minWidth: 25, maxHeight: 25, maxWidth: 25),
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 5),
              child: SizedBox(
                height: 25,
                width: 25,
                child: SvgPicture.string(
                  ic,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
            )),
      ),
    );
  }
}

import 'package:erp_admin/common/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomTextFormfield extends StatefulWidget {
  CustomTextFormfield(
      {super.key,
      required this.hint,
    
     
     
      required this.controller});

  String hint;
 
  var controller;
  String? Function(String?)? validator;

  @override
  State<CustomTextFormfield> createState() => _CustomTextFormfieldState();
}

class _CustomTextFormfieldState extends State<CustomTextFormfield> {
  bool show = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Container(
        decoration: BoxDecoration(),
        height: 65,
        child: TextFormField(
        
          cursorColor: Colors.grey.shade900,
          cursorHeight: 18,
          validator: widget.validator,
          textInputAction: TextInputAction.next,
          controller: widget.controller,
          style: TextStyle(color: Colors.grey.shade900),
          decoration: InputDecoration(
          
              contentPadding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
            // prefixIcon: Padding(
            //   padding: const EdgeInsets.only(left: 5),
            //   child: Icon(
            //     widget.icon,
            //     color: Colors.grey.shade700,
            //   ),
            // ),
            hintText: widget.hint,
            hintStyle: TextStyle(color: Color.fromARGB(255, 208, 205, 205), fontSize: 16),
            border: InputBorder.none,
            fillColor: greycolor,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(color: Colors.grey.shade200)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(color: Colors.grey.shade600)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(color: Colors.grey.shade600)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(color: Colors.grey.shade400)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide(color: Colors.grey.shade400)),
          ),
        ),
      ),
    );
  }
}

ShowToast(var messege) {
  Fluttertoast.showToast(
      msg: messege,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.NONE,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey.shade400,
      textColor: Colors.grey.shade900,
      fontSize: 16.0);
}

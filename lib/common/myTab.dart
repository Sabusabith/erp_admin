import 'package:erp_admin/common/colors.dart';
import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  MyTab({super.key,required this.txt});
  String txt;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 55,
      decoration: BoxDecoration(
          color: greycolor, borderRadius: BorderRadius.circular(35)),
      margin: EdgeInsets.symmetric(horizontal: 80),
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(txt,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
          ],
        ),
      ),
    );
  }
}

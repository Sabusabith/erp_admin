import 'package:erp_admin/common/colors.dart';
import 'package:erp_admin/common/myTab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDetails extends StatelessWidget {
  UserDetails({super.key,required this.name,required this.dob,required this.id});
  String name;
  var dob;
  var id;

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(  appBar: AppBar(
        iconTheme: IconThemeData(color: secondaryColor),
        backgroundColor: primeryColor,
        centerTitle: true,
        title: Text(
          "ERP ADMIN",
          style: TextStyle(color: secondaryColor, fontWeight: FontWeight.bold),
        ),
      ),body: SizedBox(width: size.width,height: size.height,
      child: Column(
        children: [
          SizedBox(height: 25,),
             const Text(
              "User Details",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 100,bottom: 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Full Name",style: TextStyle(color: Colors.grey.shade400),),
                ],
              ),
            ),
            MyTab(txt: name),
               SizedBox(height: 25,),
             Padding(
              padding: const EdgeInsets.only(left: 100,bottom: 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Date of Birth",style: TextStyle(color: Colors.grey.shade400),),
                ],
              ),
            ),
            MyTab(txt: dob),
               SizedBox(height: 25,),
             Padding(
              padding: const EdgeInsets.only(left: 100,bottom: 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("User Id",style: TextStyle(color: Colors.grey.shade400),),
                ],
              ),
            ),
            MyTab(txt: id),
            SizedBox(height: 55,),
            GestureDetector(onTap: (){
              Get.back();
            },
              child: Container(width: 60,height: 60,decoration: BoxDecoration(shape: BoxShape.circle,color: primeryColor),
              child: Center(child: Icon(Icons.arrow_back_ios_new,color: secondaryColor,size: 30,)),),
            )
        ],
      ),),);
  }
}
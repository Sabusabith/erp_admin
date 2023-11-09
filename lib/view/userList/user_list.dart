

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erp_admin/common/colors.dart';
import 'package:erp_admin/controller/adduserController.dart';
import 'package:erp_admin/controller/userlistController.dart';
import 'package:erp_admin/view/userList/userDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserList extends StatelessWidget {

  UserListController controller = Get.put(UserListController());
  AddUsercontroller usercontroller = Get.put(AddUsercontroller());

  UserList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: secondaryColor),
        backgroundColor: primeryColor,
        centerTitle: true,
        title: Text(
          "ERP ADMIN",
          style: TextStyle(color: secondaryColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: StreamBuilder( stream: usercontroller.getUsers(),builder: (context, snapshot){
                   if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
             final userList = snapshot.data as QuerySnapshot;
             return  ListView.builder(
                itemCount:userList.docs.length,
                itemBuilder: (context, index) {
                   final user = userList.docs[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Obx( ()=>  GestureDetector(onTap: (){
                          controller.changeBorderColor(index);
                          Get.to(UserDetails(name: user["name"],id: user["userid"],dob: user["dob"],));
                        },
                          child: Container(margin: const EdgeInsets.symmetric(horizontal: 15),
                              width: size.width / 1,
                              height: 65,
                              decoration: BoxDecoration(border: Border.all(color: controller.selectedTab.value == index?primeryColor:secondaryColor),
                                  color: greycolor,
                                  borderRadius: BorderRadius.circular(25)),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Icon(
                                    Icons.person,
                                    color: Colors.black,
                                    size: 35,
                                  ),
                                  SizedBox(width: 30,),
                                  Text(user["name"].toString(),style: TextStyle(color: Colors.black,fontSize: 25),)
                                ],
                              ),
                            ),
                        ),
                        ),
                      )
                    ],
                  );
                });
          },
            
          ),
        ),
      ),
    );
  }
}

import 'package:erp_admin/common/colors.dart';
import 'package:erp_admin/view/userList/addUser.dart';
import 'package:erp_admin/view/userList/user_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 40, bottom: 30),
        child: FloatingActionButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            backgroundColor: primeryColor,
            onPressed: () {
          Get.to(UserList());
            },
            child: Image.asset(
              "lib/Assets/Images/usr.png",
              height: 35,
            )),
      ),
      drawer: drawerItems(context),
      appBar: AppBar(
        iconTheme: IconThemeData(color: secondaryColor),
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          "ERP ADMIN",
          style: TextStyle(color: secondaryColor, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: secondaryColor,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(onTap: (){
              Get.to(AddUser());
            },
              child: Container(
                width: 300,
                height: 65,
                decoration: BoxDecoration(
                    color: primeryColor,
                    borderRadius: BorderRadius.circular(100)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_circle,
                      color: Colors.white,
                      size: 38,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Add User",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  //Drawer Menu
  drawerItems(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 3,
      height: size.height,
      color: primeryColor,
      child: Column(
        children: [
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.close,
                      color: secondaryColor,
                      size: 30,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Divider(
            color: Colors.grey.shade700,
            thickness: .8,
          ),
          SizedBox(
            height: 45,
          ),
          ListTile(onTap: (){
            Get.to(UserList());
          },
            leading: Image.asset(
              "lib/Assets/Images/usr.png",
              height: 35,
            ),
            title: Text(
              "Users",
              style: TextStyle(color: secondaryColor, fontSize: 21),
            ),
          ),
          Divider(
            color: Colors.grey.shade800,
            thickness: .8,
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: secondaryColor,
              size: 35,
            ),
            title: Text(
              " About",
              style: TextStyle(color: secondaryColor, fontSize: 21),
            ),
          ),
          Divider(
            color: Colors.grey.shade800,
          ),
          ListTile(
            leading: Image.asset(
              "lib/Assets/Images/set.png",
              height: 55,
            ),
            title: Text(
              "  Settings",
              style: TextStyle(color: secondaryColor, fontSize: 21),
            ),
          ),
        ],
      ),
    );
  }
}

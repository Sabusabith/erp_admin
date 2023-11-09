import 'package:erp_admin/common/myfield.dart';
import 'package:erp_admin/common/colors.dart';
import 'package:erp_admin/controller/adduserController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddUser extends StatelessWidget {
  AddUser({super.key});
      final nameController = TextEditingController();
  final dobController = TextEditingController();
  final idController = TextEditingController();
AddUsercontroller addUsercontroller = Get.put(AddUsercontroller());


//Add User Details to firebase 

addData()async{
 await addUsercontroller.addUser(nameController.text.trim(), dobController.text.trim(), idController.text.trim());

}
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            // SizedBox(
            //   height: 35,
            // ),
            const Text(
              "Add User",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormfield(hint: "Full Name", controller: nameController),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormfield(
                hint: "Date of Birth", controller: dobController),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormfield(hint: "User Id", controller:idController),
            const SizedBox(
              height: 40,
            ),


            //save user data to firebase
            Container(width: 250,height: 55,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(primeryColor)),
                  onPressed: () {
                    addData();
                    nameController.clear();
                    dobController.clear();
                    idController.clear();
                  },
                  child: Text(
                    "SAVE",
                    style: TextStyle(
                        color: secondaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}

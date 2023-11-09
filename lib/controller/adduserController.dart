import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:erp_admin/common/Myfield.dart';
import 'package:erp_admin/model/addUserModel.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AddUsercontroller extends GetxController{
  
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('userdata');




 Future<void> addUser(String name, String dob , String id, ) {
    return usersCollection.add({
      'name': name,
      'dob': dob,
      'userid':id
    }).then((result){
    ShowToast("Success!");
    }).catchError((e){
    ShowToast("Failed!");
    });
  }

   Stream<QuerySnapshot> getUsers() {
    return usersCollection.snapshots();
  }
}
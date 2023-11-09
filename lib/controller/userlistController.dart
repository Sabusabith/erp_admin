import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserListController extends GetxController{
  var selectedTab = (-1).obs;
     void changeBorderColor(index) {
   selectedTab.value = index;
  }
}
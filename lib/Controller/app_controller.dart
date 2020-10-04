import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController{
  // ignore: non_constant_identifier_names
  var b_icon = Icons.nights_stay_rounded.obs; //icon for changing themeMode
  var darktheme = true; // variable for checking if the darktheme is enableded or not by default not enabled

  var background = Colors.white.obs; //for appbar
  var foreground = Colors.black.obs; // changes icon color according to theme

  get getBackground => this.background.value;
  get getForeground => this.foreground.value;
  get getdarkTheme => this.darktheme;
  set setIcon(IconData icon) => this.b_icon.value = icon;
  IconData get getIcon => this.b_icon.value;
}
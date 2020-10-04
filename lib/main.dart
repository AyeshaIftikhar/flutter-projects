import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_template/Controller/app_controller.dart';

// Main() to run project
void main() {
  runApp(GetMaterialApp(
    title: "App Name",
    debugShowCheckedModeBanner:
        false, // just for development purpose no need to for releasing versions
    theme: ThemeData(
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      primaryColor: Colors.pink, // can change colour according to own choice
      primarySwatch: Colors.pink,
      accentColor: Colors.pinkAccent,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      iconTheme: IconThemeData(size: 10.0, color: Colors.white),
      appBarTheme: AppBarTheme(
        color: Colors
            .pink, // if you wanted a transparent appBar then use .withAlpha Colors.white.withAlpha(0),
        elevation: 0.0,
      ),
    ),
    darkTheme: ThemeData(
      backgroundColor: Colors.black,
      brightness: Brightness.dark,
      primaryColor: Colors.pink,
      primarySwatch: Colors.pink,
      accentColor: Colors.pinkAccent,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      iconTheme: IconThemeData(size: 10.0, color: Colors.white),
      appBarTheme: AppBarTheme(
        color: Colors.pink,
        elevation: 0.0,
      ),
    ),

    home: Home(),
  ));
}

void changeMode(){
    if (controller.darktheme) {
    Get.changeThemeMode(ThemeMode.dark);
    //controller.background.value = Colors.black;
    controller.foreground.value = Colors.white;
    controller.darktheme = !controller.darktheme;
    controller.setIcon = Icons.wb_sunny_rounded;
  } else {
    Get.changeThemeMode(ThemeMode.light);
    //controller.background.value = Colors.white;
    controller.foreground.value = Colors.black;
    controller.darktheme = !controller.darktheme;
    controller.setIcon = Icons.nights_stay_rounded;
  }
}


// object of controller
final MyController controller = Get.put(MyController());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Template"),
        actions: <Widget>[
          //can add as many icon buttons as needed
          IconButton(
            icon: Obx(() => Icon(
              controller.b_icon.value,
              color: controller.getForeground,
                )
              ),
              onPressed: () => changeMode() , 
          )
        ],
      ),
      //widgets in body entirely depends on your project implemetation
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Text(
                "Project Layout Template",
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1.4,
                ),
              ),
              Text(
                "Your Project Implementation Here!",
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 2.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

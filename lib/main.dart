import 'package:flutter/material.dart';
import 'package:service_manager/view/adminside/addproduct/add_product.dart';
import 'package:service_manager/view/adminside/home/home.dart';
import 'package:service_manager/view/home/home.dart';
import 'view/Login/Login.dart';



void main(){
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Service Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      home:const ScreenHome(),
      
    );
  }
}
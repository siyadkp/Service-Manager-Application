import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:service_manager/view/home/home.dart';

class LoginNotifier with ChangeNotifier{
  String usernameerror='';
   String passworderror='';
   
   
  usernamevalidation(String value){
    if(value.isEmpty){
      usernameerror='userm is empty';
    }else{
      usernameerror='';
    }
    notifyListeners();
  } 
    passwordvalidation(String value){
    if(value.isEmpty){
      passworderror='password is empty';
    }else{
      passworderror='';
    }
     notifyListeners();
  } 

  signin(String email,String password,BuildContext context)async{
    try{
      UserCredential a= await FirebaseAuth.instance.signInWithEmailAndPassword(email: 'ia@gmail.com', password:'12345678');
      Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenHome(),));
  }catch(e){
    print(e);
  }
  }
  
}
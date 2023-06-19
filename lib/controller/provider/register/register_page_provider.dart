

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:service_manager/view/home/home.dart';

class RegisterNotifier with ChangeNotifier{
  RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
   String emailerror='';
   String passworderror='';
   String confirmpassworderror='';
  String signinerrors='';
  String? password;
   
  bool emailvalidation(String email){
    if(email.isEmpty){
      emailerror='Email is empty';
      notifyListeners();
      return false;
    }else if (!emailRegex.hasMatch(email)) {
      emailerror='Invalid email address';
      notifyListeners();
      return false;
    }else{
      emailerror='';
      notifyListeners();
      return true;
    }
    
  } 
  
    bool passwordvalidation(String value){
    if(value.isEmpty){
      passworderror='password is empty';
      notifyListeners();
      return false;
    }else{
      password=value;
      passworderror='';
      notifyListeners();
      return true;
    }
    
     
  } 
    bool confirmpasswordvalidation(String confirmpassword){
    if(confirmpassword!=password){
      confirmpassworderror='confirm password is not mached';
       notifyListeners();
      return false;
    }
    else{
      confirmpassworderror='';
       notifyListeners();
      return true;
    }
  }

  signup(String email,String password,BuildContext context)async{
   
        try {
  await FirebaseAuth.instance.createUserWithEmailAndPassword(email:email , password: password);
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ScreenHome(),));
} on FirebaseAuthException catch (e) {
 signinerrors=e.message.toString();
 notifyListeners();
}
        
    
    
  }
}
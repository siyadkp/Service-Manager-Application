import 'package:flutter/material.dart';
import 'package:service_manager/view/Login/regester.dart';


class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
   Size  size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body:NotificationListener<OverscrollIndicatorNotification>(
    onNotification: (overscroll) {
      overscroll.disallowIndicator();
      return true;
    },
          child: ListView( 
          
            children: [
                  Container(
                    width: double.infinity,
                    height: size.height/3.5,
                    decoration: BoxDecoration(color:Colors.blue[200],borderRadius: const BorderRadius.only(bottomLeft: Radius.elliptical(390, 180))),
                  ),
                
              
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  
                decoration: const InputDecoration( 
                  hintText: 'Username',       
                  enabledBorder: OutlineInputBorder(      
                          borderSide: BorderSide(color: Colors.black),   
                          ),  
                  focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                       ),  
                 ),
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextFormField(
                  
                decoration: const InputDecoration( 
                  hintText: 'Username',       
                  enabledBorder: OutlineInputBorder(      
                          borderSide: BorderSide(color: Colors.black),   
                          ),  
                  focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                       ),  
                 ),
                ),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 160),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const ScreenRegisterAccount(),));
                }, child: const Text('Login')),
              ),
              const SizedBox(
                height:90,
              ),
              Container(
                width: double.infinity,
                height: size.height/3.67,
                decoration: BoxDecoration(color:Colors.blue[200],borderRadius: const BorderRadius.only(topRight:Radius.elliptical(390, 180) )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
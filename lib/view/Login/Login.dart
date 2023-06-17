import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:service_manager/core/colors.dart';
import 'package:service_manager/view/Login/regester.dart';


class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
      final formKey = GlobalKey<FormState>();
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
                
                
              // Padding(
              //   padding: const EdgeInsets.only(left: 20,top: 20,bottom: 90),
              //   child: Text('Welcome To Service Manager',style:GoogleFonts.caladea(fontSize: 40,fontWeight: FontWeight.w500)),
              // ),
            Padding(
              padding:  EdgeInsets.only(top: size.height/4,left:size.width/3),
              child: Text('Sign In ',style:GoogleFonts.caladea(fontSize: 40,fontWeight: FontWeight.w500)),
            ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 60),
                child: SizedBox(
                  height:58 ,
                  child: Card(
                    shape:RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.white,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(12.0),
                ),
                    elevation: 3,
                    child:TextFormField(
                textAlign: TextAlign.start,
            decoration: const InputDecoration(
                hintTextDirection: TextDirection.ltr,
                hintText: 'Username',
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                border: InputBorder.none,
            
                contentPadding: EdgeInsets.only(left: 10,bottom:0),
            ),
             validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          ),
          
                  ),
                ),
              ),

              // const Padding(
              //   padding: EdgeInsets.only(left: 33,),
              //   child: Text('huhuuhuhu',style:TextStyle(color: Colors.red,fontSize: 13)),
              // ),
              const SizedBox(height: 10,),
                Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child:SizedBox(
                  height:58 ,
                  child: Card(
                    shape:RoundedRectangleBorder(
          side: const BorderSide(
            color:Colors.white,
            width: 5, 
          ),
          borderRadius: BorderRadius.circular(12.0),
                ),
                    elevation: 3,
                    child: TextFormField(
                textAlign: TextAlign.start,
            decoration: const InputDecoration(
                hintTextDirection: TextDirection.ltr,
                hintText: 'Password',
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                border: InputBorder.none,
            
                contentPadding: EdgeInsets.only(left: 10,bottom: 2), 
            ),
          ),
                  ),
                ),
              ),
              // const Padding(
              //   padding: EdgeInsets.only(left: 33,),
              //   child: Text('huhuuhuhu',style:TextStyle(color: Colors.red,fontSize: 13)),
              // ),
              const SizedBox(height: 20,),
            
                
             Padding(
               padding: const EdgeInsets.only(left: 30,right: 15),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                Column(
               
                 children: [
                   const Text('Forgot Password ?',style: TextStyle(color: clrDarkBlue),),
                   const SizedBox(height: 10,),
                   InkWell(onTap: () {
                     Navigator.push(context,MaterialPageRoute(builder: (context) => const ScreenRegisterAccount(),));
                   }, child: const Text('Create an Account',style: TextStyle(color: clrDarkBlue))),
                 ],
               ),
             
                   ElevatedButton(
                        style:ElevatedButton.styleFrom(
                     backgroundColor: clrDarkBlue, // Background color
                   ),
                        onPressed: (){
                        
                          if (formKey.currentState!.validate()) {
               
               
                }
                      }, child: const Text('Sign In')),
                 ],
               ),
             ),
              
              const SizedBox(
                height:90,
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}

vv(formkey){

}
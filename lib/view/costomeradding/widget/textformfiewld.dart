import 'package:flutter/material.dart';

class CustomerAddingTextFormFieldWidget extends StatelessWidget {
   CustomerAddingTextFormFieldWidget({
    super.key,required this.width,required this.height,required this.text,this.maxLines=1,this.paddingtop=25,this.fontsize=15,this.condition=false
  });
  double width;
  double height;
  double paddingtop;
  double fontsize;
  int maxLines;
  String text;
  bool condition;
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: paddingtop),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Padding(
           padding: const EdgeInsets.only(left: 10,bottom: 5,),
           child: Text( text,style: TextStyle(fontWeight: FontWeight.w500,fontSize: fontsize )),
         ),
          Container(
              width: width,
              height: height,
              decoration: BoxDecoration(color: Colors.grey, borderRadius:BorderRadius.circular(15)),
              child:  condition   ? const TextField(
                
                maxLines: 7,
                style: TextStyle(
                  color: Color.fromARGB(204, 255, 255, 255),
                  fontSize: 18),
              
                textAlign: TextAlign.left,
                
                 
                decoration: InputDecoration(
                hintText: 'What do you want to listen to?',
                
                  
                hintStyle: TextStyle(color:Colors.black54),
                filled: true,
                
                border: OutlineInputBorder(
                  borderSide:BorderSide.none
                  
                 
                ),
              
                 
                ),
              ) :const TextField(
                
              
                style: TextStyle(
                  color: Color.fromARGB(204, 255, 255, 255),
                  fontSize: 18),
              
                textAlign: TextAlign.left,
                
                 
                decoration: InputDecoration(
                hintText: 'What do you want to listen to?',
                
                  
                hintStyle: TextStyle(color:Colors.black54),
                filled: true,
                
                border: OutlineInputBorder(
                  borderSide:BorderSide.none
                  
                 
                ),
              
                 
                ),
              ),
              
              ),
        ],
      ),
    );
  }
}



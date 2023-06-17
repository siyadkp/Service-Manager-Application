import 'package:flutter/material.dart';
import 'package:service_manager/core/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 390,
        height: 55,
        decoration: BoxDecoration(color:Colors.white, borderRadius:BorderRadius.circular(15),border: Border.all(width: 2,color: clrDarkBlue)),
        child:     const TextField(
          style: TextStyle(
             
              fontSize: 18),
        
          textAlign: TextAlign.left,
          
             
          decoration: InputDecoration(
            hintText: 'What do you want to listen to?',
          
            
              
            hintStyle: TextStyle(color:Colors.black45),
            filled: true,
            
            border: OutlineInputBorder(
              borderSide:BorderSide.none
              
           
            ),
        
           
          ),
        ),
          
        
      ),
    );
  }
}
import 'package:flutter/material.dart';

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
        decoration: BoxDecoration(color: const Color.fromRGBO(115, 150, 188,100), borderRadius:BorderRadius.circular(15)),
        child:     const TextField(
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
    );
  }
}
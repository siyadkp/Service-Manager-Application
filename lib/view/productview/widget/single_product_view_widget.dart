import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_manager/core/colors.dart';

import '../../../core/sizing.dart';

class SIngleProductViewWidget extends StatelessWidget {
  const SIngleProductViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      
    return Container(
      
      height: 70,width:double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
      child: Card(
        child: Row( children: [
          const SizedBox(width: 20,),
          Container(height: 50,width: 70,decoration:BoxDecoration(border: Border.all(width: 1,color: Colors.black)),child: Image.asset('asset/download.jpeg',fit: BoxFit.cover),),kWidth20,const Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.start, children: [
          
            SizedBox(width: 279,height: 20, child: Text('Foxin FPS 500S SMPS & Power Supply',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)),Row(
              children: [
                Text('₹660.00',style: TextStyle(fontSize: 15,color: Colors.grey),),kWidth20,Text('Qty :',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),Text('120',style:TextStyle(fontSize: 15) ,)
              ],
            )
          ],)
        ],),
      ),
    );
  }
}
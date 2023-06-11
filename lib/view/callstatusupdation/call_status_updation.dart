import 'dart:io';

import 'package:flutter/material.dart';
import 'package:service_manager/core/sizing.dart';
import 'package:service_manager/view/costomeradding/widget/textformfield_rightside_text.dart';

import '../costomeradding/widget/textformfiewld.dart';


class ScreenCallStatusUpdation extends StatelessWidget {
  const ScreenCallStatusUpdation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      
        padding: const EdgeInsets.only(top: 70,left: 13,),
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 60,bottom: 3),
                  child: Text('Status',style: TextStyle(fontWeight: FontWeight.w500),),
                ),
                 Container(height: 30,width: 101,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(8)), child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Complete',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                     Icon(Icons.arrow_drop_down_sharp)
                    
                   ],
                 ),),
              ],
            ),
          ),
         
          
          Column(
          
          children: [
           
        
             
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: CustomerAddingTextFormFieldWidget(height: 60,width: 320,paddingtop: 0,text:'Customer',fontsize: 20),
              ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomerAddingTextFormFieldWidget(height: 40,width: 180,text: 'Product Category',fontsize:17),
                  CustomerAddingTextFormFieldWidget(height: 40,width: 150,text: 'Date',fontsize:17),
              ],
            ),
             CustomerAddingTextFormFieldWidget(height: 50,width: 370,text: 'Product'),
              CustomerAddingTextFormFieldWidget(height: 50,width: 370,text: 'Service'),
                CustomerAddingTextFormFieldWidget(height: 50,width: 370,text: 'Remark'),
              
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                RightTextTextFormFieldWidget(width: 50, height: 50, text: 'Qty',fontsize: 17),
                 RightTextTextFormFieldWidget(width: 150, height: 50, text: 'Amount',fontsize: 20,)
               ],
              
             ),
               
                 Padding(
                   padding: const EdgeInsets.only(left:260,top: 20),
                   child: Container(height: 30,width: 101,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(9)),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 15,right: 120),
                   child: Text('Total Amount : 3679',style:TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                 ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 30),
                  child: ElevatedButton(onPressed: (){}, child:const Text('Update Status'),),
                )
          ],
          )
        ],
      ),
    );
  }
}


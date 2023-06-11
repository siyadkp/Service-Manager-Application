import 'dart:io';

import 'package:flutter/material.dart';
import 'package:service_manager/core/sizing.dart';

import '../costomeradding/widget/textformfiewld.dart';


class ScreenAddNewCall extends StatelessWidget {
  const ScreenAddNewCall({super.key});

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
                  child: Text('Type',style: TextStyle(fontWeight: FontWeight.w500),),
                ),
                 Container(height: 30,width: 101,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(8)), child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Carry In',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
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
              CustomerAddingTextFormFieldWidget(height: 50,width: 370,text: 'Complaint'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomerAddingTextFormFieldWidget(height: 50,width: 320,text: 'Serail No'),Padding(
                      padding: const EdgeInsets.only(right: 15,top: 45),
                      child: Icon(Icons.camera_alt_sharp),
                    )
                  ],
                ),
               CustomerAddingTextFormFieldWidget(height: 200,width: 370,text: 'Description :',maxLines: 7,condition: true),
               
                
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 30),
                  child: ElevatedButton(onPressed: (){}, child:const Text('Add New Call')),
                )
          ],
          )
        ],
      ),
    );
  }
}


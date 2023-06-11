import 'package:flutter/material.dart';
import 'package:service_manager/core/sizing.dart';

import 'widget/textformfiewld.dart';

class ScreenCustomerAdding extends StatelessWidget {
  const ScreenCustomerAdding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      
        padding: const EdgeInsets.only(top: 70,left: 13),
        children: [
          
          Column(
          
          children: [
            Row( 
              children: [
           
              Padding(
                padding: const EdgeInsets.only(top: 25,left: 5),
                child: Container(width: 50,height: 60,decoration: BoxDecoration(color: Colors.amber, borderRadius:BorderRadius.circular(15) ),),
              ),
              kWidth10,
               CustomerAddingTextFormFieldWidget(height: 60,width: 320,paddingtop: 0,text:'Fist Name',fontsize: 20),
               
            ],),
           
            CustomerAddingTextFormFieldWidget(height: 60,width: 370,text: 'Last Name',fontsize:17),
             CustomerAddingTextFormFieldWidget(height: 50,width: 370,text: 'Phone'),
              CustomerAddingTextFormFieldWidget(height: 50,width: 370,text: 'Phone 1'),
                CustomerAddingTextFormFieldWidget(height: 50,width: 370,text: 'Place'),
               CustomerAddingTextFormFieldWidget(height: 200,width: 370,text: 'Address :',maxLines: 7,condition: true),
                CustomerAddingTextFormFieldWidget(height: 200,width: 370,text: 'Billing Address :',maxLines: 7,condition: true,),
                
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 30),
                  child: ElevatedButton(onPressed: (){}, child:const Text('Add New Customer')),
                )
          ],
          )
        ],
      ),
    );
  }
}


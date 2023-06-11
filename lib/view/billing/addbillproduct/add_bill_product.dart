
import 'package:flutter/material.dart';
import 'package:service_manager/view/costomeradding/widget/textformfield_rightside_text.dart';
import '../../../core/sizing.dart';
import '../../costomeradding/widget/textformfiewld.dart';
import '../billing.dart';

class ScreenAddBillProduct extends StatelessWidget {
  const ScreenAddBillProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
      
        padding: EdgeInsets.only(left: 25),
        child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          kHeight20,
           CustomerAddingTextFormFieldWidget(height: 50,width: 370,text: 'Product',fontsize:18 ,),
            Row(
              
              children: [
                RightTextTextFormFieldWidget(height: 50,width:80,text: 'Qty'),
                 RightTextTextFormFieldWidget(height: 50,width: 150,text: 'Discount'),
              ],
            ),
                
           RightTextTextFormFieldWidget(height: 50 ,width: 180,text: 'Amount :',fontsize: 20,),
                RightTextTextFormFieldWidget(height: 50 ,width: 180,text: 'Total Amount :',fontsize: 25,),
              
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 100),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Edit Call Details'),
                  ),
                ),
              
        ]),
      ),
    ));
  }
}
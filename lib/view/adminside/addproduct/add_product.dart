
import 'package:flutter/material.dart';
import 'package:service_manager/view/costomeradding/widget/textformfield_rightside_text.dart';
import '../../../core/sizing.dart';
import '../../costomeradding/widget/textformfiewld.dart';


class ScreenAdminAddProduct extends StatelessWidget {
  const ScreenAdminAddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
      
        padding: EdgeInsets.only(left: 25),
        child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          kHeight20,
           TopTextTextFormFieldWidget(height: 50,width: 370,text: 'Product Name',fontsize:18 ,),
               TopTextTextFormFieldWidget(height: 50,width: 370,text: 'Serail No',fontsize:18 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TopTextTextFormFieldWidget(height: 50,width:80,text: 'Qty'),
                 TopTextTextFormFieldWidget(height: 50,width: 150,text: 'Wholesale Price'),
              ],
            ),
                
           TopTextTextFormFieldWidget(height: 50 ,width: 180,text: 'Retail Price ',fontsize: 20,),
                RightTextTextFormFieldWidget(height: 50 ,width: 180,text: 'Total Price ',fontsize: 25,),
              
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 100),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Add Product'),
                  ),
                ),
              
        ]),
      ),
    ));
  }
}
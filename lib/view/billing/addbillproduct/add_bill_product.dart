import 'package:flutter/material.dart';
import 'package:service_manager/view/costomeradding/widget/textformfield_rightside_text.dart';
import '../../../core/colors.dart';
import '../../../core/sizing.dart';
import '../../costomeradding/widget/textformfiewld.dart';
import '../billing.dart';

class ScreenAddBillProduct extends StatelessWidget {
  const ScreenAddBillProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 15,top: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
           InkWell( onTap: () {
                      Navigator.pop(context);
                    }, child: Container(width: 40,height: 40,color: clrDarkBlue,child: const Icon(Icons.arrow_back,color: Colors.white,size: 30,),)),
          
          TopTextTextFormFieldWidget(
            height: 50,
            width: 370,
            text: 'Product',
            fontsize: 18,
          ),
          Row(
            children: [
              RightTextTextFormFieldWidget(height: 50, width: 80, text: 'Qty'),
              kWidth20,
              RightTextTextFormFieldWidget(
                  height: 50, width: 150, text: 'Discount'),
            ],
          ),
          RightTextTextFormFieldWidget(
            height: 50,
            width: 180,
            text: 'Amount :',
            fontsize: 20,
          ),
          RightTextTextFormFieldWidget(
            height: 50,
            width: 180,
            text: 'Total Amount :',
            fontsize: 25,
          ),
          kHeight20,
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: clrDarkBlue,
              ),
              child: const Text('Add To Bill'),
            ),
          ),
        ]),
      ),
    ));
  }
}

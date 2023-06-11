import 'package:flutter/material.dart';
import 'package:service_manager/core/sizing.dart';
import 'package:service_manager/view/widget/search_bar_widget.dart';

import 'widget/single_product_view_widget.dart';

class ScreenProductView extends StatelessWidget {
  const ScreenProductView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
             SizedBox(height: screenSize.height/20,),
            const SearchBarWidget(),
            SizedBox(height: 40,),
            Expanded(  child: ListView.builder(padding: const EdgeInsets.only(left: 7,right: 7), itemBuilder: (context, index) => const SIngleProductViewWidget(),itemCount: 20,))
            
          ],
        ),
      ),
    );
  }
}


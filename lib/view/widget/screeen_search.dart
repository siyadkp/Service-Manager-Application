import 'package:flutter/material.dart';
import 'package:service_manager/core/colors.dart';
import 'package:service_manager/view/widget/radio_search_sorting_widget.dart';
import 'package:service_manager/view/widget/search_bar_widget.dart';

import '../../core/sizing.dart';
import '../service_calls /widget/service_callview_singlewidget.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child:Column(
    crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: (){Navigator.pop(context); }, icon:Icon(Icons.arrow_back,color: clrDarkBlue,size: 35,)),
         Padding(
              padding: EdgeInsets.only(top: 5, bottom: 25),
              child: SearchBarWidget(),
            ),
            SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 20,left: 8),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  
                    RadioSearchSortingWidget(name: 'Name'),
                    kWidth5,
                    RadioSearchSortingWidget(name: 'Phone'),
                    kWidth5,
                    RadioSearchSortingWidget(name: 'Place'),
                    kWidth5,
                    RadioSearchSortingWidget(name: 'Address'),
                    kWidth20
                  ],
                  
                ),
              ),
            ),
           Expanded(
             child: ListView.builder(itemBuilder: (context, index) {
               return ServicallViewSingleWidget();
             },
             itemCount: 10,
             ),
           )
        ],
      ))
    );
  }
}
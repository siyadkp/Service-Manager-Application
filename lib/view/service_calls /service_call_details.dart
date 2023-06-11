import 'package:flutter/material.dart';
import 'package:service_manager/core/sizing.dart';
import 'package:service_manager/view/widget/search_bar_widget.dart';
import '../widget/radio_search_sorting_widget.dart';
import 'widget/service_callview_singlewidget.dart';

class ScreenServiceCalls extends StatelessWidget {
  const ScreenServiceCalls({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 25, bottom: 25),
              child: SearchBarWidget(),
            ),
            SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 25),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    kWidth20,
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Job No',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                 Text('Name',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),), Text('Product',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),), Text('Status',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)
              ],
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.only(top: 5, left: 7, right: 7),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 5,
                ),
                itemBuilder: (context, index) {
                  return const ServicallViewSingleWidget();
                },
                itemCount: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}

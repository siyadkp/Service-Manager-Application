import 'package:flutter/material.dart';
import 'package:service_manager/core/colors.dart';
import 'package:service_manager/core/sizing.dart';
import 'package:service_manager/view/widget/search_bar_widget.dart';

import 'widget/single_product_view_widget.dart';

class ScreenProductView extends StatelessWidget {
  const ScreenProductView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 140),
                  child: SizedBox(
                      height: size.height,
                      child:
                          NotificationListener<OverscrollIndicatorNotification>(
                              onNotification: (overscroll) {
                                overscroll.disallowIndicator();
                                return true;
                              },
                              child: ListView.builder(
                                padding: const EdgeInsets.only(
                                    left: 7, right: 7, top: 0),
                                itemBuilder: (context, index) =>
                                    const SIngleProductViewWidget(),
                                itemCount: 20,
                              ))),
                ),
                Card(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: Container(
                        width: double.infinity,
                        height: 140,
                        color: clrDarkBlue,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const SearchBarWidget(),
                          ],
                        ))),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

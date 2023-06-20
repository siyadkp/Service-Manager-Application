import 'package:flutter/material.dart';
import 'package:service_manager/core/colors.dart';
import 'package:service_manager/view/calldetailsview/call_details_view.dart';
import 'package:service_manager/view/widget/screeen_search.dart';
import 'widget/service_callview_singlewidget.dart';

class ScreenServiceCalls extends StatelessWidget {
  const ScreenServiceCalls({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15, bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        color: clrDarkBlue,
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, right: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ScreenSearch(),
                            ));
                      },
                      child: const Icon(
                        Icons.search,
                        size: 40,
                        color: clrDarkBlue,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView.separated(
                    padding: const EdgeInsets.only(top: 30, left: 7, right: 7),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 5,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ScreenCallDetailView(),
                                ));
                          },
                          child: const ServicallViewSingleWidget());
                    },
                    itemCount: 20,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border.symmetric(
                            horizontal: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(182, 201, 205, 1)))),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Job No',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Name',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Product',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Status',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

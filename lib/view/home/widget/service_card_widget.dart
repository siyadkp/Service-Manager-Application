import 'package:flutter/material.dart';
import 'package:service_manager/core/colors.dart';
import 'package:service_manager/view/billing/billing.dart';
import 'package:service_manager/view/newcalladding/new_call_adding.dart';
import 'package:service_manager/view/service_calls%20/service_call.dart';
import 'package:service_manager/view/settings/settings.dart';

import '../../customerview.dart/customer_view.dart';
import '../../productview/product_view.dart';

class ServiceCardWidget extends StatelessWidget {
  ServiceCardWidget(
      {super.key,
      required this.text,
      required this.image,
      required this.top,
      required this.Index});

  String text;
  String image;
  double top;
  int Index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            if (Index == 0) {
              return const ScreenAddNewCall();
            } else if (Index == 1) {
              return const ScreenServiceCalls();
            } else if (Index == 2) {
              return const ScreenCustomerView();
            } else if (Index == 3) {
              return const ScreenProductView();
            } else {
              return const ScreenBilling();
            }
          },
        ));
      },
      child: Card(
        color: clrWhite,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: top,
                left: 40,
              ),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
              ),
              child: SizedBox(
                  width: 160,
                  height: 40,
                  child: Text(
                    text,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w700),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

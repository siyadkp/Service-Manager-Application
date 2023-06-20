import 'package:flutter/material.dart';

import '../../../core/sizing.dart';

class ServicallViewSingleWidget extends StatelessWidget {
  const ServicallViewSingleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(202, 226, 232, 100),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: const Row(
          children: [
            SizedBox(
              width: 317,
              height: 50,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    kWidth10,
                    Text('C23/587',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                    kWidth20,
                    Text(
                      'Sahil Saleem',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    kWidth20,
                    Text(
                      'Hp Latitude 4950',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    kWidth20,
                    Text(
                      'Apr 20 /2023',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            kWidth10,
            Text(
              'Pending',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}

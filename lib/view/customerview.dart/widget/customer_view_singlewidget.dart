import 'package:flutter/material.dart';

import '../../../core/sizing.dart';

class CustomerViewSingleWidget extends StatelessWidget {
  const CustomerViewSingleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(202, 226, 232, 100),
      child: Container(
        
        height: 60,
        width: 250,
        decoration: BoxDecoration( borderRadius: BorderRadius.circular(15)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
            Text('Sahil Saleem',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w600)),
            kWidth20,
            Text(
              '8765456780',
              style:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            kWidth20,
            Text(
              'Kozhikode',
              style:
                  TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            
           
          ],
        ),
      ),
    );
  }
}

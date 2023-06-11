import 'package:flutter/material.dart';
import 'package:service_manager/core/sizing.dart';

import 'widget/widget.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       
        body: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [
                IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back,)),
                const Text('Settings',style: TextStyle(fontSize: 25,color: Colors.black),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                
                children: [
                  SettingsWidget(icon: Icons.info, text:'About Service Maneger', lasticon:true),
                  kHeight20,
                   SettingsWidget(icon: Icons.note_sharp, text:'Terms and Condition', lasticon:true),
                    kHeight20,
                SettingsWidget(icon: Icons.privacy_tip, text:'Privacy and Policy', lasticon:true),
                 kHeight20,
                  SettingsWidget(icon: Icons.logout_outlined, text:'Logout', lasticon:false),
                  kHeight20,
                  const Text('version1.1.0',style:TextStyle(color: Colors.grey),)
                ],
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
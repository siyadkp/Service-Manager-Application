import 'package:flutter/material.dart';
import 'package:service_manager/view/adminside/addproduct/add_product.dart';

class ScreenAdminHome extends StatelessWidget {
  const ScreenAdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 7,left: 10,right: 10),
          child: Column(
            children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('User View',style:TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.brown)),
                  CircleAvatar(radius: 27,)
                ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250,top: 30),
                  child: Column(
                    children: [
                    InkWell(child: Image.asset('asset/add.png',height: 70,),onTap:() =>  Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenAdminAddProduct(),))),const Text('Add Product',style: TextStyle(fontSize: 19),)
                  ],),
              
                ),
                Expanded(
                  child: ListView.builder( padding: const EdgeInsets.only(top: 20), itemBuilder: (context, index) {
                    return Card(color: Colors.brown[300],
                      child: const ListTile(leading: CircleAvatar(radius: 30,backgroundImage: AssetImage('asset/download (1).jpeg'),),title: Text('Name'),subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('TotalWorks',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),Text('2567',style: TextStyle(fontSize: 15,color: Colors.black),)
                        ],
                      ),trailing: Text('Total Amount : 7851',style: TextStyle(fontSize: 16),),),
                    );
                  },
                  itemCount: 4,),
                )
          
            ],
          ),
        ),
      ),
    );
  }
}
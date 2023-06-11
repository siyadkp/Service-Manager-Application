import 'package:flutter/material.dart';
import 'package:service_manager/core/images.dart';
import 'package:service_manager/core/naming.dart';
import 'package:service_manager/view/home/widget/service_card_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = 40;
    ValueNotifier scrollableNotifier = ValueNotifier(true);
    ScrollController? scrollController;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 235,
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.elliptical(300, 70),
                      bottomRight: Radius.elliptical(300, 70),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 255),
                  child: SizedBox(
                    height: 500,
                    width: double.infinity,
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 40, width: 100),
                            SizedBox(
                              height: 700,
                              child: GridView.builder(
                                physics:
                                    const NeverScrollableScrollPhysics(),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15),
                                itemCount: 5,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 230,
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 7,
                                  crossAxisSpacing: 5,
                                ),
                                itemBuilder: (context, index) =>
                                    ServiceCardWidget(
                                  image: images[index],Index: index,
                                  text: serviceCardNames[index],
                                  top: index == 3 ? 10 : 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 40,
                        top: 160,
                      ),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 150,
                            child: Card(
                                color: Colors.green,
                                elevation: 10,
                                margin: EdgeInsets.all(0)),
                          ),
                          Positioned(
                            left: 10,
                            top: 5,
                            child: Text(
                              'Complete',
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 40,
                            child: SizedBox(
                              width: 145,
                              child: Center(
                                child: Text(
                                  '17566',
                                  style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 160),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 150,
                            child: Card(
                              color: Colors.orange,
                              elevation: 10,
                              margin: EdgeInsets.all(0),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 5,
                            child: Text(
                              'Pending',
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 40,
                            child: SizedBox(
                              width: 145,
                              child: Center(
                                child: Text(
                                  '17566',
                                  style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

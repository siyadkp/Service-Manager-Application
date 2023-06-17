import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:service_manager/view/home/home.dart';

import '../../core/colors.dart';

class ScreenRegisterAccount extends StatelessWidget {
  const ScreenRegisterAccount({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowIndicator();
            return true;
          },
          child: ListView(
            padding: const EdgeInsets.only(top: 200),
            children: [
              Center(
                child: Text('Sign Up ',
                    style: GoogleFonts.caladea(
                        fontSize: 40, fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
                child: SizedBox(
                  height: 58,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.white,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 3,
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      decoration: const InputDecoration(
                        hintTextDirection: TextDirection.ltr,
                        hintText: 'Email',
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10, bottom: 2),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: SizedBox(
                  height: 58,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 3,
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      decoration: const InputDecoration(
                        hintTextDirection: TextDirection.ltr,
                        hintText: 'Password',
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10, bottom: 2),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: SizedBox(
                  height: 58,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.white,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 3,
                    child: TextFormField(
                      textAlign: TextAlign.start,
                      decoration: const InputDecoration(
                        hintTextDirection: TextDirection.ltr,
                        hintText: 'Confirm Password',
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10, bottom: 2),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 160),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: clrDarkBlue, // Background color
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreenHome(),
                          ));
                    },
                    child: const Text('Sign Up')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

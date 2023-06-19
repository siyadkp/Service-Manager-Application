import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:service_manager/controller/provider/login/login_page_provider.dart';
import 'package:service_manager/controller/provider/register/register_page_provider.dart';
import 'view/Login/Login.dart';




void main()async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RegisterNotifier(),),
          ChangeNotifierProvider(create: (context) => LoginNotifier(),)
      ],
      child: MaterialApp(
        title: 'Service Manager',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black
        ),
        home: ScreenLogin(),
        
      ),
    );
  }
}
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:qlsuabanxe/pages/login_page.dart';
import 'package:qlsuabanxe/json/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBNs_Kf4SO94UuM3Kw1SN32Y6Opt_AgcM4", // Your apiKey
      appId: "1:768340393722:android:961b305eb4f79b36085343", // Your appId
      messagingSenderId: "768340393722", // Your messagingSenderId
      projectId: "loginqlxe", // Your projectId
    ), //fix loi khong tim thay Firebase
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE,
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return LoginPage();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

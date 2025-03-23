import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tiemtra_anlanh/app.dart';
import 'package:tiemtra_anlanh/firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const App());
}



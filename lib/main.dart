import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_bag_m/screens/all_items_screen.dart';
import 'package:smart_bag_m/screens/classes_screen.dart';
import 'package:smart_bag_m/screens/home_screen.dart';
import 'package:smart_bag_m/screens/students_screen.dart';
import 'package:smart_bag_m/screens/teachers_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        ClassesScreen.id: (context) => ClassesScreen(),
        StudentsScreen.id: (context) => StudentsScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        TeachersScreen.id: (context) => TeachersScreen(),
        AllItemsScreen.id: (context) => AllItemsScreen(),
      },
      initialRoute: HomeScreen.id,
      home: HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mealapp/screens/categories_screen.dart';
import 'package:mealapp/screens/category_melas_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          accentColor: Colors.amber,
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.white),
              textTheme: TextTheme())),
      home: MyHomePage(),
      routes: {
        CategoryMealScreen.routeName: (context) => CategoryMealScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 16,
        leading: Icon(
          Icons.food_bank_sharp,
          size: 40,
        ),
        title: Text(
          'Feed me',
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: CategoriesScreen(),
    );
  }
}

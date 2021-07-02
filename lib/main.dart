import 'package:flutter/material.dart';
import 'package:getx_project_post/view/home.dart';

main() async {

  WidgetsFlutterBinding.ensureInitialized();

  runApp( NewsApp() );
}

class NewsApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
    );
  }
}
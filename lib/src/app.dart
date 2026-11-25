import 'package:api_call/src/pages/news_home.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: NewsHome());
  }
}

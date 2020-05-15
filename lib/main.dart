import 'package:adboardstest/pages/login_page.dart';
import 'package:adboardstest/provider/category_provider.dart';
import 'package:adboardstest/provider/template_details_provider.dart';
import 'package:adboardstest/provider/user_provider.dart';
import 'package:adboardstest/routes/routes.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  var userProvider = UserProvider();
  var categoryProvider = CategoryProvider();
  var templateDetailProvider = TemplateDetailsProvider();
  final router = Router();
  Routes.configureRoutes(router);
  Routes.router = router;
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: userProvider),
          ChangeNotifierProvider.value(value: categoryProvider),
          ChangeNotifierProvider.value(value: templateDetailProvider)
        ],
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: Routes.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LoginPage(),
    );
  }
}


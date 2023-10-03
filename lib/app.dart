import 'package:flutter/material.dart';
import 'layout_mobile_screen_0.dart';
import 'layout_desktop.dart';

// Crear widget principal 'APP' de tipo 'stateful'
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  AppState createState() => AppState();
}

// Definir el estado del widget 'APP'
class AppState extends State<App> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicación Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: _setLayout(context),
    );
  }

  Widget _setLayout(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width >= 600) {
      return const LayoutDesktop();
    } else {
      return const LayoutMobileScreen0();
    }
  }
}

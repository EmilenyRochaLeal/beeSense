import 'package:device_preview/device_preview.dart';
import 'package:beesense/views/home/home_page.dart';
import 'package:beesense/views/isca/isca.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:beesense/views/perfil/perfil.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (_) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BeeSense',
      theme: ThemeData(
        primaryColor: Color(0xFF06D6A0),
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        colorScheme: ColorScheme.light(
          primary: Color(0xFF06D6A0),
          secondary: Color(0xFFDDFDE7),
          // surface: Colors.white,
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1D1B20),
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Color(0xFF49454F)),
          bodySmall: TextStyle(fontSize: 14, color: Color(0xFF49454F)),
        ),
        iconTheme: const IconThemeData(color: Color(0xFF49454F)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // navigatorObservers: [NavigatorObserver(), ],
      // home: HomePage(),
      // onGenerateRoute: (RouteSettings settings ){
      //   if (settings.name == '/') {
      //     return MaterialPageRoute(
      //       settings: settings,
      //       builder: (context) => HomePage()
      //     );
      //   }
      //   if (settings.name == '/isca') {
      //     return MaterialPageRoute(
      //       settings: settings,
      //       builder: (context) => Isca()
      //     );
      //   }
      // },
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        '/': (_) => HomePage(),
        '/isca': (_) => Isca(),
        '/perfil': (_) => const Perfil(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/pin_screen.dart';
import 'screens/theme/color_theme.dart';
import 'screens/main_screen.dart';
import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showSplashScreen = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await Future.delayed(
        const Duration(seconds: 3)); // splash screen이 표시될 시간(초)
    setState(() {
      _showSplashScreen = false;
    });
  }

  Future<String?> getPIN() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? PIN = prefs.getString('PIN');
    return PIN;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Pretendard',
        primaryColor: AbColor.ABMainColor,
        colorScheme: const ColorScheme.light(
          background: Colors.white,
          brightness: Brightness.light,
          primary: AbColor.ABMainColor,
        ),
      ),
      home: _showSplashScreen
          ? const Scaffold(body: SplashScreen())
          : FutureBuilder(
              future: getPIN(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const SplashScreen();
                } else {
                  if (snapshot.hasData) {
                    return const PINScreen();
                  } else {
                    return const MainScreen();
                  }
                }
              },
            ),
    );
  }
}

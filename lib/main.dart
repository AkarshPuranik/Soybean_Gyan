import 'package:farmers_app/screens/home.dart';
import 'package:farmers_app/screens/language_selection.dart';
import 'package:farmers_app/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart'; // Import the generated localization file

void main() {
  runApp(MyFarmApp());
}

class MyFarmApp extends StatefulWidget {
  @override
  _MyFarmAppState createState() => _MyFarmAppState();

  static void setLocale(BuildContext context, Locale locale) {
    final _MyFarmAppState? state = context.findAncestorStateOfType<_MyFarmAppState>();
    state?.setLocale(locale);
  }
}

class _MyFarmAppState extends State<MyFarmApp> {
  Locale? _locale; // Initially set to null, meaning no default locale

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmer Utility App',
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      locale: _locale, // Locale will be set dynamically
      localizationsDelegates: [
        S.delegate, // Auto-generated localization delegate
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/language-selection': (context) => LanguageSelectionScreen(), // Allow language selection
        '/home': (context) => ContentPage(),
      },
    );
  }
}

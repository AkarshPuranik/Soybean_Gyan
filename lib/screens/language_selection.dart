import 'package:flutter/material.dart';
import 'package:farmers_app/main.dart';
import '../generated/l10n.dart';

class LanguageSelectionScreen extends StatelessWidget {
  final List<Map<String, String>> languages = [
    {'code': 'en', 'name': 'English - Select Language '},
    {'code': 'hi', 'name': 'Hindi - भाषा चुनें '},
    {'code': 'ta', 'name': 'Tamil - மொழியை தேர்ந்தெடுக்கவும்'},
    {'code': 'te', 'name': 'Telugu - భాషను ఎంచుకోండి '},
    {'code': 'mr', 'name': 'Marathi - भाषा निवडा'}, // Added Marathi
  ];

  void _setLanguage(BuildContext context, String code) {
    // Set the selected locale dynamically
    MyFarmApp.setLocale(context, Locale(code));
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).selectLanguage),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(languages[index]['name']!),
            onTap: () => _setLanguage(context, languages[index]['code']!),
          );
        },
      ),
    );
  }
}

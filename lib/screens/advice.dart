import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Advice extends StatefulWidget {
  @override
  _AdviceState createState() => _AdviceState();
}

class _AdviceState extends State<Advice> {
  @override
  void initState() {
    super.initState();
    _launchURL();
  }

  _launchURL() async {
    const url = 'https://services.india.gov.in/service/ministry_services?ln=en&cmd_id=11';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    // This is just a placeholder widget, you can customize it if needed
    return Scaffold(
      appBar: AppBar(
        title: Text('Launching URL...'),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

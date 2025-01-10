import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class YouTubeLauncher extends StatelessWidget {

  final String youtubeUrl = "https://www.youtube.com/@icar-indianinstituteofsoyb648/videos";


  Future<void> _launchYouTube() async {
    Uri url = Uri.parse(youtubeUrl);

        if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication, // Opens the URL in an external app or browser
      );
    } else {
      throw "Could not launch $youtubeUrl";
    }
  }

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _launchYouTube();
    });


    return Scaffold(
      appBar: AppBar(
        title: Text("Launching YouTube"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          "Opening YouTube Channel...",
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: YouTubeLauncher(),
  ));
}

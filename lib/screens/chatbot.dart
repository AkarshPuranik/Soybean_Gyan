import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class ChatbotPage extends StatefulWidget {
  @override
  _ChatbotPageState createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  final InAppWebViewController? _webViewController = null;
  final String _url = "http://14.139.54.71/soyabot";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text ('Soybot',style: TextStyle(color: Colors.white), ),
        backgroundColor: Colors.green,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: WebUri(_url)), // Use WebUri instead of Uri
        onWebViewCreated: (InAppWebViewController controller) {
          setState(() {
            // Assign the controller to a variable if needed
          });
        },
        onLoadStart: (controller, url) {
          debugPrint("Loading URL: $url");
        },
        onLoadStop: (controller, url) {
          debugPrint("Finished Loading: $url");
        },
      ),
    );
  }
}

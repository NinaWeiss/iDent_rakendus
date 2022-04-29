import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';


import '../main.dart';

class broneerimine_screen extends StatefulWidget {
  final String title;

  const broneerimine_screen({Key key, this.title}) : super(key: key);
  @override
  broneerimine_screenState createState() => broneerimine_screenState();
}
class broneerimine_screenState extends State<broneerimine_screen> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://www.ident.ee/broneerimine',
        onWebViewCreated:(WebViewController webViewController) {
            _webViewController = webViewController;
            _controller.complete(webViewController);
          },
          onProgress: (int progress) {
          print("WebView is loading (progress : $progress%)");
          },
          onPageStarted: (String url) {
          print('Page started loading: $url');
          },
          onPageFinished: (String url) {
          print('Page finished loading: $url');
          _webViewController
              .evaluateJavascript("javascript:(function() { " +
          "var head = document.getElementsByTagName('header')[0];" +
          "head.parentNode.removeChild(head);" +
          "var footer = document.getElementsByTagName('footer')[0];" +
          "footer.parentNode.removeChild(footer);" +
          "})()")
              .then((value) => debugPrint('Page finished loading Javascript'))
              .catchError((onError) => debugPrint('$onError'));
        },
      ),

    );
  }
}
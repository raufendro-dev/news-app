import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsViewScreen extends StatelessWidget {
  NewsViewScreen({required this.link});
  String link;
  late final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse(link));

  @override
  Widget build(BuildContext context) {
    print(link);
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}

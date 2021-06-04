import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapOfSights extends StatelessWidget {
  const MapOfSights({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildWebView(),
    );
  }

  Widget _buildWebView(){
    return WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://mapy.cz/s/gekujubalu',
    );
  }
}


import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter/material.dart';


class TestScreen extends StatefulWidget{



  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  double _progress=0;
  late InAppWebViewController webView;

  GlobalKey<ScaffoldState> scaffoldKey=GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse('https://www.softwaretestinghelp.com/digital-marketing-software/')
            ),
            onWebViewCreated: (InAppWebViewController controller){
              webView =controller;

            },
            onProgressChanged: (InAppWebViewController controller, int progress){
              setState(() {
                _progress = progress/100;
              });
            },

          ),
          Positioned(
            bottom: 20,
            left: 50,
            child: FlatButton(
              color: Colors.yellow,
              child: Text('click me'),

              onPressed: (){
                // _controller.runJavascript('alert("Hello World")');
                webView.evaluateJavascript(source: 'mega-menu-1552-0',
                    contentWorld: ContentWorld.PAGE
                );
                //_controller.runJavascript("document.getElementById('jquery-core-js').click();");
              },),
          )
          // _progress < 1 ? SizedBox(height: 3, child: LinearProgressIndicator(
          //   value: _progress,
          //   color: Colors.yellow,
          // )): SizedBox()
        ],
      ),
    );
  }
}
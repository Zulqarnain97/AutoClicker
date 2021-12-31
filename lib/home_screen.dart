import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class HomeScreen extends StatefulWidget{


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late WebViewController _controller;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   _controller.runJavascript("document.getElementById('td-ad-placeholder').click()");
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    final _key = UniqueKey();
    final height=MediaQuery.of(context).size.height;



    // return CustomScrollView(
    //
    //   slivers: <Widget>[
    //     SliverAppBar(
    //       title: const Text("Software Testing Help"),
    //       floating: true,
    //     ),
    //     SliverFillRemaining(
    //       child: WebView(initialUrl: "https://www.softwaretestinghelp.com/digital-marketing-software/"),
    //     )
    //   ],
    // );
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height*0.08,
        backgroundColor: Colors.black,
        title: Center(child: Text('Software Testing Help', style: TextStyle(
          color: Colors.white
        ),)),
      ),
      body:
         Stack(
           children: [
             WebView(
               initialUrl: "https://www.softwaretestinghelp.com/digital-marketing-software/",
               javascriptMode: JavascriptMode.unrestricted,
               onWebViewCreated: (WebViewController controller){
                 // _controller = c;
             _controller=controller;
               },
               // onPageStarted: (String s) async {
               //   setState(() {
               //
               //     // on page started codes
               //     //_controller.evaluateJavascript("document.getElementsByTagName('html')[0].InnerHTML");
               //     _controller.runJavascript("document.getElementById('mega-menu-item-654').click()");
               //
               //   });
               // },
               // onPageFinished: (String s) async {
               //   setState(() {
               //     // on page finished codes
               //     _controller.runJavascript("document.getElementById('mega-menu-item-654').click()");
               //
               //     //_controller.evaluateJavascript("document.getElementById('btnId').click()");
               //   });
               // },
             ),
             Positioned(
               bottom: 20,
               left: 50,
               child: FlatButton(
                 color: Colors.yellow,
                 child: Text('click me'),

                 onPressed: (){
                   // setState(() {
                   //   _controller.runJavascript("document.getElementById('tve_frontend-js-extra').click();");
                   // });
                    _controller.runJavascript('alert("Hello World")');
                   //  _controller.runJavascript("('#tve_frontend-js-extra').click();");

               },),
             )
             //  Container(
             //       height: height*0.90,
             //       child: Expanded(
             //         child: WebView(
             //           initialUrl: 'https://www.softwaretestinghelp.com/digital-marketing-software/',
             //           key: _key,
             //           javascriptMode: JavascriptMode.unrestricted,
             //         ),
             //       )
             //
             // ),
             // Positioned(
             //   bottom:0,
             //   left: 10,
             //   child: GestureDetector(
             //     onTap: (){
             //       Scaffold.of(context).showSnackBar(SnackBar(
             //         content: Text('Ad is clicked'),
             //       ));
             //     },
             //     child: IgnorePointer(
             //         ignoring: true,
             //         child: Container(
             //           decoration: BoxDecoration(
             //             border: Border.all(
             //               color: Colors.blue
             //             )
             //           ),
             //           height: 100,
             //           width: 100,
             //
             //         ),
             //
             //     ),
             //   ),
             // )
           ]
         )



    );
  }
}
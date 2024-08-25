import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class Highlight extends StatelessWidget {
  const Highlight({super.key});
  @override
  Widget build(BuildContext context) {
//     var code = '''main() {
//   print("Hello, World!");
// }
// ''';

  List codes=[
    '''void main(){
      print("Hello,World!");
    }''',
    '''void main(){
      print("Hello,World!");
    }''',
    '''void main(){
      print("Hello,World!");
    }'''
  ];

    return Scaffold(
      body: ListView.builder(
        itemCount: codes.length,
        itemBuilder: (context,index){
        return Container(
          padding: EdgeInsets.all(10),
          child: HighlightView(
          // The original code to be highlighted
          codes[index],
                
          // Specify language
          // It is recommended to give it a value for performance
          language: 'dart',
                
          // Specify highlight theme
          // All available themes are listed in `themes` folder
          theme: githubTheme,
                
          // Specify padding
          padding: EdgeInsets.all(12),
                
          // Specify text style
          textStyle: TextStyle(
            fontFamily: 'My awesome monospace font',
            fontSize: 16,
          ),
                ),
        );
      })
    );
  }
}
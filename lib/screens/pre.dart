import 'package:flutter/material.dart';


class pre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Pre-disposing Factors',style:TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
       ),

      body: ListView(
        children: [
          ExpansionTile(
            title: Text('Click to read more'),
            children: [
              Image.asset('assets/images/pre.jpg', width: 700,), // Replace with your image asset path
            ],

          ),
        ],
      ),
    );
  }
}



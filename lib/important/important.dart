import 'package:flutter/material.dart';


class important extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Important Information',style:TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ), ),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text('Recommended Soybean Varieties'),
            children: [
              Image.asset('assets/images/imp3.jpg'), // Replace with your image asset path
            ],
          ),
          ExpansionTile(
            title: Text('Seed Rate and Spacing'),
            children: [
              Image.asset('assets/images/imp2.jpg'), // Replace with your image asset path
            ],
          ),
          ExpansionTile(
            title: Text('Recommended Sowing Time'),
            children: [
              Image.asset('assets/images/imp1.jpg'), // Replace with your image asset path
            ],
          ),
        ],
      ),
    );
  }
}
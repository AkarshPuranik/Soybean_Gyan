import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class Soil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).soilRequirement,
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
        ),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20, right: 30, left: 30, bottom: 25),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 16, bottom: 16, top: 16),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                ),
                child: Text(
                  S.of(context).soilDescription,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.black12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

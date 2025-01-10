import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart';  // Import the localization generated file

class General extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).generalPrecautions,  // Use localized string for title
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
                padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  S.of(context).precaution1,  // Use localized string for the first precaution
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  S.of(context).precaution2,  // Use localized string for the second precaution
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  S.of(context).precaution3,  // Use localized string for the third precaution
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  S.of(context).precaution4,  // Use localized string for the fourth precaution
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  S.of(context).precaution5,  // Use localized string for the fifth precaution
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Divider(
                color: Colors.black12,
                thickness: 1,
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

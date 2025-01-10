import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
// Replace with your generated localization file

class Sowing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).sowingTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
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
              _buildTextContainer(
                context,
                S.of(context).sowingInfo1,
              ),
              Divider(height: 20, thickness: 1, color: Colors.black12),
              _buildTextContainer(
                context,
                S.of(context).sowingInfo2,
              ),
              Divider(height: 20, thickness: 1, color: Colors.black12),
              _buildTextContainer(
                context,
                S.of(context).sowingInfo3,
              ),
              Divider(height: 20, thickness: 1, color: Colors.black12),
              _buildTextContainer(
                context,
                S.of(context).sowingInfo4,
              ),
              Divider(height: 20, thickness: 1, color: Colors.black12),
              _buildTextContainer(
                context,
                S.of(context).sowingInfo5,
              ),
              Divider(height: 20, thickness: 1, color: Colors.black12),
              _buildTextContainer(
                context,
                S.of(context).sowingInfo6,
              ),
              Divider(height: 20, thickness: 1, color: Colors.black12),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextContainer(BuildContext context, String text) {
    return Container(
      padding: EdgeInsets.only(left: 16, bottom: 16, top: 16),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}

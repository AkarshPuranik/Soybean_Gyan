import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../generated/l10n.dart'; // Make sure you import the generated localization class

class Tillage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).tillage_title, // Using localized title
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal)),
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
              _buildInfoBox(S.of(context).deep_ploughing_text),
              _buildDivider(),
              _buildInfoBox(S.of(context).ploughing_3_4_years_text),
              _buildDivider(),
              _buildInfoBox(S.of(context).maintain_soil_health_text),
              _buildDivider(),
              _buildInfoBox(S.of(context).organic_manure_rotation_text),
              _buildDivider(),
              _buildInfoBox(S.of(context).pre_monsoon_ploughing_text),
              _buildDivider(),
              _buildInfoBox(S.of(context).ppi_herbicide_text),
              _buildDivider(),
              _buildInfoBox(S.of(context).adverse_climatic_conditions_text),
              _buildDivider(),
              _buildInfoBox(S.of(context).ridge_furrow_method_text),
              _buildDivider(),
              _buildInfoBox(S.of(context).dry_spell_operation_text),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoBox(String text) {
    return Container(
      padding: EdgeInsets.only(left: 16, bottom: 16, top: 16),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
      ),
      child: Text(text, style: TextStyle(fontSize: 18, color: Colors.white)),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 20,
      thickness: 1,
      color: Colors.black12,
    );
  }
}

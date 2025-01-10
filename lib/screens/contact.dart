import 'package:flutter/material.dart';
import 'package:farmers_app/generated/l10n.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localized = S.of(context); // Access localization strings

    return Scaffold(
      appBar: AppBar(
        title: Text(localized.contactInformation),
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              localized.address,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(localized.addressDetails),
            SizedBox(height: 16),
            Text(
              localized.phone,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildContactItem(localized.director, '0731-2476188'),
            _buildContactItem(localized.insectManagement1, '9753318347'),
            _buildContactItem(localized.weedManagement1, '9977574793'),
            _buildContactItem(localized.cropManagement1, '9425964016'),
            _buildContactItem(localized.nutrientManagement1, '8700864155'),
            _buildContactItem(localized.seedAndVariety1, '9340650457'),
            _buildContactItem(localized.diseaseManagement1, '9407072727'),
            SizedBox(height: 16),
            Text(
              localized.appRelatedInformation,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            _buildContactItem(localized.principalScientist, '0731-2437911'),
            SizedBox(height: 16),
            Text(
              localized.email,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('soybean.director@icar.gov.in'),
            Text('dsrdirector@gmail.com'),
            SizedBox(height: 16),
            Text(
              localized.fax,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('0731-2470520'),
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem(String name, String phoneNumber) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name),
        SizedBox(height: 4),
        Text(phoneNumber),
        Divider(),
      ],
    );
  }
}

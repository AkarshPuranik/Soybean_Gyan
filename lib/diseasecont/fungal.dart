import 'package:flutter/material.dart';
import 'package:farmers_app/diseasecont/aristastoma.dart';
import 'package:farmers_app/diseasecont/brown%20spot.dart';
import 'package:farmers_app/diseasecont/cercospora.dart';
import 'package:farmers_app/diseasecont/charcol.dart';
import 'package:farmers_app/diseasecont/choanephora.dart';
import 'package:farmers_app/diseasecont/collar.dart';
import 'package:farmers_app/diseasecont/decay.dart';
import 'package:farmers_app/diseasecont/fusarium.dart';
import 'package:farmers_app/diseasecont/leaf.dart';
import 'package:farmers_app/diseasecont/myrothecium.dart';
import 'package:farmers_app/diseasecont/phyllosticta.dart';
import 'package:farmers_app/diseasecont/pod.dart';
import 'package:farmers_app/diseasecont/powdery.dart';
import 'package:farmers_app/diseasecont/root.dart';
import 'package:farmers_app/diseasecont/rust.dart';
import 'package:farmers_app/diseasecont/stem.dart';
import 'package:farmers_app/diseasecont/target.dart';
import 'package:farmers_app/generated/l10n.dart';

class Fungal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text(S.of(context).fungalDiseases),
      ),
      body: Container(
        color: Colors.green.shade300, // Set the background color to green
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            _buildViralItem(
              context,
              S.of(context).charcolTitle,
              'assets/images/disease.jpg',
              Charcol(),
            ),
            _buildViralItem(
              context,
              S.of(context).collarRot,
              'assets/images/collar_rot.jpg',
              Collar(),
            ),
            _buildViralItem(
              context,
              S.of(context).sclerotiniaStemRot,
              'assets/images/stem_rot.jpg',
              Stem(),
            ),
            _buildViralItem(
              context,
              S.of(context).anthracnosePodBlight,
              'assets/images/pod_blight.jpg',
              Pod(),
            ),
            _buildViralItem(
              context,
              S.of(context).rust,
              'assets/images/rust.jpg',
              Rust(),
            ),
            _buildViralItem(
              context,
              S.of(context).cercosporaBlight,
              'assets/images/cercospora.jpg',
              Cercospora(),
            ),
            _buildViralItem(
              context,
              S.of(context).frogeyeLeafSpot,
              'assets/images/leaf_spot.jpg',
              Leaf(),
            ),
            _buildViralItem(
              context,
              S.of(context).podStemBlight,
              'assets/images/decay.jpg',
              Decay(),
            ),
            _buildViralItem(
              context,
              S.of(context).fusariumCollarPodRot,
              'assets/images/fusarium.jpg',
              Fusarium(),
            ),
            _buildViralItem(
              context,
              S.of(context).myrotheciumLeafSpot,
              'assets/images/myrothecium.jpg',
              Myrothecium(),
            ),
            _buildViralItem(
              context,
              S.of(context).rootRotStemRot,
              'assets/images/root_rot.jpg',
              Root(),
            ),
            _buildViralItem(
              context,
              S.of(context).brownSpot,
              'assets/images/brown_spot.jpg',
              Brown(),
            ),
            _buildViralItem(
              context,
              S.of(context).phyllostictaLeafSpot,
              'assets/images/phyllosticta.jpg',
              Phyllosticta(),
            ),
            _buildViralItem(
              context,
              S.of(context).choanephoraLeafBlight,
              'assets/images/choanephora.jpg',
              Choanephora(),
            ),
            _buildViralItem(
              context,
              S.of(context).aristastomaLeaf,
              'assets/images/aristastoma.jpg',
              Aristastoma(),
            ),
            _buildViralItem(
              context,
              S.of(context).powderyMildew,
              'assets/images/mildew.jpg',
              Powdery(),
            ),
            _buildViralItem(
              context,
              S.of(context).targetLeafSpot,
              'assets/images/target.jpg',
              Target(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildViralItem(
      BuildContext context,
      String title,
      String imagePath,
      Widget page,
      ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            Positioned(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:farmers_app/generated/l10n.dart';

class Pustule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/pustule.jpg',
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.green[900],
          ),
          SliverFillRemaining(
            child: DefaultTabController(
              length: 3,
              child: Scaffold(
                backgroundColor: Colors.green[800],
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  title: Text(
                    S.of(context).bacterialPustule,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  backgroundColor: Colors.green[800],
                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text(
                          S.of(context).description,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          S.of(context).symptoms,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          S.of(context).management,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    _buildContentCard(
                        context, S.of(context).descriptionContent),
                    _buildContentCard(
                        context, S.of(context).symptomsContent),
                    _buildContentCard(
                        context, S.of(context).managementContent),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContentCard(BuildContext context, String content) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(18.0),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          content,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

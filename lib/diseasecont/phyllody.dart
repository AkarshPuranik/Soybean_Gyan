import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:farmers_app/generated/l10n.dart';

class Phyllody extends StatelessWidget {
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
                'assets/images/phyllody.jpg',
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
                    S.of(context).phyllody_title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
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
                    _buildTabContent(
                      context,
                      S.of(context).phyllody_description,
                    ),
                    _buildTabContent(
                      context,
                      S.of(context).phyllody_symptom,
                    ),
                    _buildTabContent(
                      context,
                      S.of(context).phyllody_management,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabContent(BuildContext context, String content) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(18.0),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          content,
          style: const TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

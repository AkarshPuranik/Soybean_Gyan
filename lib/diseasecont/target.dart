import 'package:flutter/material.dart';
import 'package:farmers_app/generated/l10n.dart';

class Target extends StatelessWidget {
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
                'assets/images/target.jpg',
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
                    S.of(context).target_leaf_spot_title,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  backgroundColor: Colors.green[800],
                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text(
                          S.of(context).description_tab,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          S.of(context).symptoms_tab,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          S.of(context).management_tab,
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
                      S.of(context).target_description,
                    ),
                    _buildTabContent(
                      context,
                      S.of(context).target_symptoms,
                    ),
                    _buildTabContent(
                      context,
                      S.of(context).target_management,
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

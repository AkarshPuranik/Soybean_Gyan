import 'package:flutter/material.dart';
import 'package:farmers_app/generated/l10n.dart';

class Yellow extends StatelessWidget {
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
                'assets/images/yellow.jpg',
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
                    S.of(context).yellow_mosaic,
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
                    _buildInfoContainer(
                      context,
                      S.of(context).yellow_mosaic_description,
                    ),
                    _buildInfoContainer(
                      context,
                      S.of(context).yellow_mosaic_symptoms,
                    ),
                    _buildInfoContainer(
                      context,
                      S.of(context).yellow_mosaic_management,
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

  Widget _buildInfoContainer(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(18.0),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:farmers_app/generated/l10n.dart';

class Miner extends StatelessWidget {
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
                'assets/images/miner.jpg',
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
                    S.of(context).leafMinerTitle,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  backgroundColor: Colors.green[800],
                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text(
                          S.of(context).identificationTab,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          S.of(context).damageTab,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          S.of(context).managementTab,
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
                    Container(
                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          S.of(context).leafMinerIdentification,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          S.of(context).leafMinerDamage,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          S.of(context).leafMinerManagement,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
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
}

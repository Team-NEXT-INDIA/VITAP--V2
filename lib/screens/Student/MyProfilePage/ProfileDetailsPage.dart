import 'package:flutter/material.dart';

import '../../../customs/theme.dart';

class ProfileDetailsPage extends StatefulWidget {
  const ProfileDetailsPage({super.key});

  @override
  _ProfileDetailsPageState createState() => _ProfileDetailsPageState();
}

class _ProfileDetailsPageState extends State<ProfileDetailsPage> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: false,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 200.0,
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 30),
                      decoration: profileGradient,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Samuel Philip',
                        style: TextStyle(fontSize: 25.0),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '21BCE7615\nMH-2 - 405\nHosteller',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(Icons.share),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              expandedHeight: 380.0,
              bottom: TabBar(
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                tabs: [
                  Tab(text: 'PERSONAL'),
                  Tab(text: 'EDUCATION'),
                  Tab(text: 'MENTOR'),
                ],
                controller: controller,
              ),
            )
          ];
        },
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: index % 2 == 0 ? Colors.blue : Colors.green,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 100.0,
                child: Text(
                  'Flutter is awesome',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
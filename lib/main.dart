import 'package:flutter/material.dart';
import 'package:project_from_figma/gen/assets.gen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 54,
          titleSpacing: 0,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Community',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(14, 19, 24, 1),
                  ),
                ),
              ),
              Row(
                children: [
                  Assets.icons.iconAdd.svg(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Assets.icons.iconFind.svg(),
                  ),
                ],
              ),
            ],
          ),
          bottom: const TabBar(
            indicatorColor: Color.fromRGBO(15, 16, 20, 1),
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Color.fromRGBO(214, 214, 214, 1),
            labelColor: Color.fromRGBO(14, 19, 24, 1),
            unselectedLabelColor: Color.fromRGBO(115, 116, 123, 1),
            tabs: <Widget>[
              Tab(
                height: 44,
                child: Text(
                  'Explore',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                height: 44,
                child: Text(
                  'Following',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            ViewExplore(),
            ViewFallowing(),
          ],
        ),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 8,
      thickness: 8,
      color: Color.fromRGBO(240, 240, 240, 1),
    );
  }
}

class ViewExplore extends StatelessWidget {
  const ViewExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyDivider(),
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    '🔥 Hot today',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(14, 19, 24, 1),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                MyCard(tagName: '#Trading'),
                MyCard(tagName: '#PlayToEarn'),
                MyCard(tagName: '#Defi'),
                MyCard(tagName: '#Trade'),
              ],
            ),
          ],
        ),
        MyDivider(),
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.tagName});

  final String tagName;

  @override
  Widget build(BuildContext context) {
    final styleTagText = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(14, 19, 24, 1),
    );

    return Card(
      color: Color.fromRGBO(240, 240, 240, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(24),
      ),
      child: SizedBox(
        height: 36,
        width: 90,
        child: Center(
            child: Text(
          tagName,
          style: styleTagText,
        )),
      ),
    );
  }
}

class ViewFallowing extends StatelessWidget {
  const ViewFallowing({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final styleBottomBarText = TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Divider(
          height: 0,
          color: Color.fromRGBO(214, 214, 214, 1),
        ),
        Padding(
          padding: const EdgeInsets.all(7.5),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.icons.icon_community.svg(),
                  Text('Community', style: styleBottomBarText),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.icons.icon_crypto_news.svg(),
                  Text('Crypto news', style: styleBottomBarText),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.icons.icon_market.svg(),
                  Text('Market', style: styleBottomBarText),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.icons.icon_notifications.svg(),
                  Text('Notifications', style: styleBottomBarText),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.icons.icon_more.svg(),
                  Text('More', style: styleBottomBarText),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

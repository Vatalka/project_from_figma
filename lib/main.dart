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
          titleSpacing: 0,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(14, 19, 24, 1),
          ),
          toolbarHeight: 64,
          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(17, 17, 1, 17),
                  child: Assets.icons.iconAdd.svg(),
                ),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Assets.icons.iconFind.svg(),
                ),
              ],
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Community'),
          ),
          bottom: const TabBar(
            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            labelColor: Color.fromRGBO(14, 19, 24, 1),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Color.fromRGBO(15, 16, 20, 1),
            dividerColor: Color.fromRGBO(214, 214, 214, 1),
            unselectedLabelColor: Color.fromRGBO(115, 116, 123, 1),
            isScrollable: true,
            padding: EdgeInsets.only(right: 400),
            tabs: <Widget>[
              Tab(
                height: 44,
                child: Text('Explore'),
              ),
              Tab(
                height: 44,
                child: Text('Following'),
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

class ViewExplore extends StatelessWidget {
  const ViewExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyDivider(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '🔥 Hot today',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(14, 19, 24, 1),
                ),
              ),
            ),
            SizedBox(
              height: 64,
              width: 500,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.fromLTRB(16, 1, 8, 16),
                children: <Widget>[
                  MyCard(tagName: '#Trading'),
                  MyCard(tagName: '#PlayToEarn'),
                  MyCard(tagName: '#Defi'),
                  MyCard(tagName: '#TradeMarket'),
                  MyCard(tagName: '#PlayToEarn'),
                  MyCard(tagName: '#Defi'),
                  MyCard(tagName: '#TradeMarket'),
                ],
              ),
            ),
          ],
        ),
        MyDivider(),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 7, 7, 7),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Assets.images.avatar38x38.image(),
              hintText: "What's goind on?",
            ),
          ),
        ),
        MyDivider(),
        SizedBox(
          height: 570,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Stack(
                          children: <Widget>[
                            Assets.images.avatar40x40.image(),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Assets.icons.iconOnline.svg(),
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Felix One',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(14, 19, 24, 1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Assets.icons.iconCorrect.svg(),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '3 min ago',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(115, 116, 123, 1),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Assets.icons.iconDot.svg(),
                              ),
                              Assets.icons.iconWorld.svg(),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Assets.icons.iconDropdown.svg(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 24, 18, 18),
                    child: Assets.icons.iconMenu.svg(),
                  ),
                ],
              ),
              Text(
                "The beast is back in town 🔥 In NY from May 23-28."
                "🚀 There are few tickets left, so hurry up!"
                "\nTickets: ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(14, 19, 24, 1),
                ),
              ),
              Text(
                "https://tradersoftheyear.com/conference_may2021",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(129, 180, 0, 1),
                ),
              ),
              Assets.images.imagePost1.image(),
            ],
          ),
        ),
        MyDivider(),
      ],
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
      elevation: 0,
      color: Color.fromRGBO(240, 240, 240, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(24),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: Text(tagName, style: styleTagText),
        ),
      ),
    );
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyleBottomBar =
        TextStyle(fontSize: 11, fontWeight: FontWeight.w400);

    return SizedBox(
      height: 60,
      child: Column(
        children: [
          Divider(
            height: 0,
            color: Color.fromRGBO(214, 214, 214, 1),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Assets.icons.iconCommunity.svg(),
                    Text('Community', style: textStyleBottomBar),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Assets.icons.iconCryptoNews.svg(),
                    Text('Crypto news', style: textStyleBottomBar),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Assets.icons.iconMarket.svg(),
                    Text('Market', style: textStyleBottomBar),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Assets.icons.iconNotifications.svg(),
                    Text('Notifications', style: textStyleBottomBar),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Assets.icons.iconMore.svg(),
                    Text('More', style: textStyleBottomBar),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

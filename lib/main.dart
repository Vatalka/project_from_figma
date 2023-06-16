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
          toolbarHeight: 56,
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
            padding: EdgeInsets.only(right: 200),
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
            ViewTabExplore(),
            ViewTabFallowing(),
          ],
        ),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }
}

class HeaderOfExplore extends StatelessWidget {
  const HeaderOfExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375,
      height: 104,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Text(
              '🔥 Hot today',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(14, 19, 24, 1),
              ),
            ),
          ),
          Flexible(
            child: ListView(
              padding: EdgeInsets.only(left: 12, bottom: 12),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                TagCard(tagName: '#Trading'),
                TagCard(tagName: '#PlayToEarn'),
                TagCard(tagName: '#Defi'),
                TagCard(tagName: '#TradeMarket'),
                TagCard(tagName: '#Trading'),
                TagCard(tagName: '#PlayToEarn'),
                TagCard(tagName: '#Defi'),
                TagCard(tagName: '#TradeMarket'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UnderHeaderOfExplore extends StatelessWidget {
  const UnderHeaderOfExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 54,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
            child: Assets.images.avatar38x38.image(),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "What's goind on?",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NameForPost extends StatelessWidget {
  const NameForPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 24, 0),
      child: SizedBox(
        width: 320,
        height: 40,
        child: Row(
          children: [
            Stack(
              children: <Widget>[
                Assets.images.avatar40x40.image(),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Assets.icons.iconOnline.svg(),
                )
              ],
            ),
            SizedBox(width: 8, height: 40),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 20,
                      child: Text(
                        'Felix One',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(14, 19, 24, 1),
                        ),
                      ),
                    ),
                    SizedBox(width: 4, height: 20),
                    Assets.icons.iconCorrect.svg(),
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
                    SizedBox(width: 4, height: 20),
                    Assets.icons.iconDot.svg(),
                    SizedBox(width: 4.67, height: 20),
                    Assets.icons.iconWorld.svg(),
                    SizedBox(width: 6.17, height: 20),
                    Assets.icons.iconDropdown.svg(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BottomPostBar extends StatelessWidget {
  const BottomPostBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 96,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 0, 12),
                child: SizedBox(
                  height: 20,
                  child: Row(
                    children: [
                      Assets.icons.iconLikeOn.svg(),
                      SizedBox(width: 4.67, height: 15),
                      Text('53'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 16, 12),
                child: SizedBox(
                  height: 20,
                  child: Row(
                    children: [
                      Text('0 comments'),
                      SizedBox(width: 8, height: 15),
                      Text('4 share'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(
            height: 0,
            indent: 16,
            endIndent: 16,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    Assets.icons.iconLike.svg(),
                    SizedBox(width: 4.83, height: 15),
                    Text('Like'),
                  ],
                ),
                Row(
                  children: [
                    Assets.icons.iconChat.svg(),
                    SizedBox(width: 7.33, height: 15),
                    Text('Comment'),
                  ],
                ),
                Row(
                  children: [
                    Assets.icons.iconArrow.svg(),
                    SizedBox(width: 5.23, height: 15),
                    Text('Share'),
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

class FirstPost extends StatelessWidget {
  const FirstPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: 360,
          child: Column(
            children: [
              NameForPost(),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 1, 12),
                child: SizedBox(
                  width: 343,
                  height: 120,
                  child: Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              "The beast is back in town 🔥 In NY from May 23-28."
                              "🚀 There are few tickets left, so hurry up!\nTickets:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(14, 19, 24, 1),
                          ),
                        ),
                        TextSpan(
                          text:
                              "\r https://tradersoftheyear.com/conference_may2021",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(129, 180, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Assets.images.imagePost1.image(),
              BottomPostBar(),
            ],
          ),
        ),
        Positioned(
          right: 18.5,
          top: 24.33,
          child: Assets.icons.iconMenu.svg(),
        )
      ],
    );
  }
}

class SecondPost extends StatelessWidget {
  const SecondPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: 360,
          child: Column(
            children: [
              NameForPost(),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                child: SizedBox(
                  width: 328,
                  height: 48,
                  child: Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "The The beast is back in town 🔥 😎✌\n",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(14, 19, 24, 1),
                          ),
                        ),
                        TextSpan(
                          text: "#test #happymorning",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(129, 180, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Assets.images.imagePost2.image(),
              BottomPostBar(),
            ],
          ),
        ),
        Positioned(
          right: 18.5,
          top: 24.33,
          child: Assets.icons.iconMenu.svg(),
        ),
      ],
    );
  }
}

class ViewTabExplore extends StatelessWidget {
  const ViewTabExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostHeader(),
        FirstPost(),
        MyDivider(),
        SecondPost(),
      ],
    );
  }
}

class PostHeader extends StatelessWidget {
  const PostHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyDivider(),
        HeaderOfExplore(),
        MyDivider(),
        UnderHeaderOfExplore(),
        MyDivider(),
      ],
    );
  }
}

class ViewTabFallowing extends StatelessWidget {
  const ViewTabFallowing({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          floating: true,
          flexibleSpace: PostHeader(),
          toolbarHeight: 182,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => FirstPost(),
            childCount: 4,
          ),
        )
      ],
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

class TagCard extends StatelessWidget {
  const TagCard({super.key, required this.tagName});

  final String tagName;

  @override
  Widget build(BuildContext context) {
    final tagStyle = TextStyle(
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
      margin: EdgeInsets.only(left: 4, right: 4),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
        child: Text(tagName, style: tagStyle),
      ),
    );
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final inactiveStyle = TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(115, 116, 123, 1),
    );

    final activeStyle = TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: Color.fromRGBO(14, 19, 24, 1),
    );

    return SizedBox(
      width: 360,
      height: 56,
      child: Column(
        children: [
          Divider(
            height: 0,
            color: Color.fromRGBO(214, 214, 214, 1),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Assets.icons.iconCommunity.svg(),
                    Text('Community', style: activeStyle),
                  ],
                ),
                Column(
                  children: [
                    Assets.icons.iconCryptoNews.svg(),
                    Text('Crypto news', style: inactiveStyle),
                  ],
                ),
                Column(
                  children: [
                    Assets.icons.iconMarket.svg(),
                    Text('Market', style: inactiveStyle),
                  ],
                ),
                Column(
                  children: [
                    Assets.icons.iconNotifications.svg(),
                    Text('Notifications', style: inactiveStyle),
                  ],
                ),
                Column(
                  children: [
                    Assets.icons.iconMore.svg(),
                    Text('More', style: inactiveStyle),
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

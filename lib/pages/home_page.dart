import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hoid/pages/config_page.dart';
import 'package:hoid/pages/news_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getBottomNavBar(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: page,
      children: [NewsPage(), ConfigPage()],
    );
  }

  Widget getBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: page,
      onTap: (index) {
        setState(() {
          page = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}

import 'package:cloud_music/page/home/home.dart';
import 'package:cloud_music/utils/extension/theme_extension.dart';
import 'package:cloud_music/widget/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  late final pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      final cur = pageController.page!.round();

      if (cur != _selectedIndex) {
        _selectedIndex = cur;
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (pageController.hasClients) {
      pageController.animateToPage(
        _selectedIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      padding: EdgeInsets.zero,
      body: PageView(
        controller: pageController,
        children: const [
          FindPage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "我的"),
        ],
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor:Theme.of(context).invalidBlack,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedFontSize: 12.0,
      ),
    );
  }
}

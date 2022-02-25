import 'package:flutter/material.dart';
import 'package:sharon_vincy/Home.dart';
import 'package:sharon_vincy/Widgets/BottomNavBar.dart';
import 'package:sharon_vincy/Widgets/BottomNavBarItem.dart';


class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({required Key key}) : super(key: key);

  @override
  MyTabbedPageState createState() => new MyTabbedPageState();
}

class MyTabbedPageState extends State<MyTabbedPage>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late int _currTabIdx;

  @override
  void initState() {
    _currTabIdx = 2;
    _pageController = PageController(initialPage: 0, keepPage: false);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void updateTab(idx) {
    print('**************${idx}*****************');
      setState(() {
        _currTabIdx = idx;
        _pageController.animateToPage(idx,
            duration: Duration(milliseconds: 200), curve: Curves.easeOut);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: CustomScrollView(
        shrinkWrap: false,
        slivers: <Widget>[
          SliverFillRemaining(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: <Widget>[
                HomePage(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        backgroundColor: Colors.white,
        selectedTextColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.lightBlueAccent,
        borderRadius: 0,
        itemBorderRadius: 0,
        onTap: (idx) => updateTab(idx),
        currentIndex: _currTabIdx,
        items: [
          BottomNavBarItem(icon: 'assets/images/stack1.png' , title: ""),
          BottomNavBarItem(icon:  'assets/images/shop.png' , title: ""),
          BottomNavBarItem(icon: 'assets/images/cam.png', title: ""),
          BottomNavBarItem(icon:  'assets/images/nav.png', title: ""),
          BottomNavBarItem(icon: 'assets/images/star.png', title: " "),
        ],
      ),

    );
  }
}

class MyTab extends StatelessWidget
{
  static final myTabbedPageKey = new GlobalKey<MyTabbedPageState>();
  Widget build(BuildContext context)
  {
    return MyTabbedPage(key: myTabbedPageKey);
  }
}

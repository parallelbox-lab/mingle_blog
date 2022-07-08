import 'package:flutter/material.dart';
import 'package:mingle_blog/screens/articles/articles.dart';
import 'package:mingle_blog/screens/home/home.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  static String routeName = "/page-view";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Widget> _pages = <Widget>[
  const Home(),
  const  Articles()
  ];
  final PageController _pageController = PageController();
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    _selectedIndex = index;
  }

  void _itemTapped(int _selectedIndex) {
    setState(
      () {
        _pageController.jumpToPage(_selectedIndex);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            elevation: 3,
            selectedLabelStyle:const TextStyle(
                fontFamily: 'Core Pro',
                fontSize: 11.0,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal),
            unselectedLabelStyle:const TextStyle(
                fontFamily: 'Core Pro',
                fontSize: 11.0,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal),
            onTap: _itemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Image.asset(
                      'assets/images/Home.png',
                      width: 25,
                      height: 25,
                      color: _selectedIndex == 0 ? Colors.black : Colors.grey,
                    )),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child:Image.asset('assets/images/search.png',
                        color: _selectedIndex == 1 ? Colors.black : Colors.grey,
                        width: 25,
                        height: 25)),
                label: 'Articles',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Image.asset('assets/images/Profile.png',
                        color: _selectedIndex == 2 ? Colors.black : Colors.grey,
                        width: 25,
                        height: 25)),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType.fixed),
      ),
    );
  }
}

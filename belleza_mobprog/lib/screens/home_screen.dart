import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../screens/newsfeed_screen.dart';
import '../screens/notification_screen.dart';
import '../widgets/custom_font.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  // Enhancement 4: Custom app name (palitan kung gusto mo ng ibang pangalan)
  static const String _appName = 'Hexfire';

  // Enhancement 2: Dynamic AppBar title per selected tab
  String get _appBarTitle {
    switch (_selectedIndex) {
      case 0:
        return _appName;
      case 1:
        return 'Notifications';
      case 2:
        return 'Profile';
      default:
        return _appName;
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: FB_TEXT_COLOR_WHITE,
        elevation: 2,
        title: CustomFont(
          text: _appBarTitle,
          fontSize: ScreenUtil().setSp(25),
          color: FB_PRIMARY,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
        children: [
          const NewsFeedScreen(),
          const NotificationScreen(),
          // Enhancement 3: Screen para sa 3rd BottomNavigationBarItem
          Center(
            child: CustomFont(
              text: 'Denmark Belleza',
              fontSize: ScreenUtil().setSp(20),
              color: FB_PRIMARY,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onTappedBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          // Enhancement 3: Additional BottomNavigationBarItem
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: FB_PRIMARY,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}

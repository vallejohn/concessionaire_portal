import 'package:flutter/material.dart';
import 'package:mwd_concessionaire_portal/demo_pages/bill_information_page.dart';
import 'package:mwd_concessionaire_portal/demo_pages/profile_page.dart';
import 'package:mwd_concessionaire_portal/demo_pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const BillInformationPage(),
    const ProfilePage(),
    const SettingsPage(),
  ];

  void _onNavBarItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index); // Jump to the corresponding page
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged, // Listen for page changes
          children: _pages,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: _onNavBarItemTapped,
        destinations: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Billing Information',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ].map(
          (destination) {
            return NavigationDestination(
              icon: destination.icon,
              label: destination.label ?? '',
            );
          },
        ).toList(),
      ),
    );
  }
}

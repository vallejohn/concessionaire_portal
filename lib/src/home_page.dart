import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mwd_concessionaire_portal/src/profile/presentation/pages/profile_page.dart';
import 'package:mwd_concessionaire_portal/demo_pages/settings_page.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/presentation/blocs/billing_information/billing_information_bloc.dart';
import 'package:mwd_concessionaire_portal/src/profile/presentation/blocs/profile/profile_bloc.dart';

import 'billing_information/presentation/pages/bill_information_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

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
  void initState() {
    super.initState();
    BlocProvider.of<ProfileBloc>(context).add(
      const ProfileEvent.onRequestData(),
    );

    BlocProvider.of<BillingInformationBloc>(context).add(
      const BillingInformationEvent.onRequestBillingHistory(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged, // Listen for page changes
          children: [
            BlocBuilder<BillingInformationBloc, BillingInformationState>(
                builder: (context, state) {
              return BillInformationPage(
                billingInformation: state.billHistory,
              );
            }),
            BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
              final accountState = state.accountState;

              return ProfilePage(
                linkedAccounts: accountState.linkedAccounts,
              );
            }),
            const SettingsPage(),
          ],
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

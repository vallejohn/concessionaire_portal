import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notifActive = false;
  bool _biometricActive = false;


  Widget _navItem(
    String title, {
      Color? titleColor,
    String? subtitle,
    VoidCallback? onTap,
    IconData? leadingIcon,
    Widget? trailingWidget,
  }) {
    final textStyle = Theme.of(context).textTheme;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            if(leadingIcon != null)
              Icon(leadingIcon, color: Theme.of(context).primaryColor,),
            if(leadingIcon != null) const SizedBox(width: 15,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textStyle.titleLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: titleColor?? Theme.of(context).colorScheme.primary),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle,
                      style: textStyle.bodyLarge,
                    ),
                ],
              ),
            ),
            if(trailingWidget != null)
              trailingWidget,
            if(trailingWidget == null) Icon(
              Icons.arrow_forward_ios_rounded,
              color: Theme.of(context).disabledColor,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 40),
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Settings',
                style: textStyle.displayMedium
                    ?.copyWith(color: Theme.of(context).primaryColor)),
          ),
          const SizedBox(
            height: 40,
          ),
          _navItem(
            'About us',
            subtitle: 'Learn more about Murcia Water District',
            onTap: () {},
          ),
          _navItem(
            'Terms and Conditions',
            onTap: () {},
          ),
          _navItem(
            'Accounts',
            leadingIcon: Icons.credit_card_rounded,
            subtitle: 'See list of link accounts',
            onTap: () {},
          ),
          _navItem(
            'Change password',
            leadingIcon: Icons.password_rounded,
            subtitle: 'Update your password',
            onTap: () {},
          ),
          _navItem(
            'Notifications',
            leadingIcon: Icons.notifications_active,
            subtitle: 'Turn notifications on or off',
            trailingWidget: Switch(value: _notifActive, onChanged: (bool value){
              setState(() {
                _notifActive = value;
              });
            })
          ),
          _navItem(
              'Biometrics',
              leadingIcon: Icons.fingerprint_rounded,
              subtitle: 'Enable biometrics on or off',
              trailingWidget: Switch(value: _biometricActive, onChanged: (bool value){
                setState(() {
                  _biometricActive = value;
                });
              })
          ),
          _navItem(
            'Logout',
            leadingIcon: Icons.logout_rounded,
            subtitle: 'Logout your account',
            onTap: (){

            },
          ),
          _navItem(
            'Version',
            subtitle: 'Tap to check for latest version',
            trailingWidget: Text('v1.0.0', style: textStyle.bodyLarge,),
            onTap: (){

            }
          ),
          const Divider(height: 30,),
          _navItem(
            'Delete Account',
            titleColor: Theme.of(context).colorScheme.error,
            leadingIcon: Icons.delete_forever_rounded,
            subtitle: 'This action cannot be undone',
            onTap: (){

            },
          ),
        ],
      ),
    );
  }
}

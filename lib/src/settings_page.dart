import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/concessionaire_portal.dart';
import 'package:mwd_concessionaire_portal/core/util/widgets/loading.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/blocs/logout/logout_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

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
    bool active = true,
  }) {
    final textStyle = Theme.of(context).textTheme;

    Color effectiveTitleColor = Theme.of(context).colorScheme.primary;
    Color? effectiveSubTitleColor;

    if (!active) {
      effectiveTitleColor = Theme.of(context).disabledColor;
      effectiveSubTitleColor = Theme.of(context).disabledColor;
    } else if (titleColor != null) {
      effectiveTitleColor = titleColor;
    }

    return InkWell(
      onTap: !active ? null : onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            if (leadingIcon != null)
              Icon(
                leadingIcon,
                color: effectiveTitleColor,
              ),
            if (leadingIcon != null)
              const SizedBox(
                width: 15,
              ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textStyle.titleLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: effectiveTitleColor),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle,
                      style: textStyle.bodyLarge
                          ?.copyWith(color: effectiveSubTitleColor),
                    ),
                ],
              ),
            ),
            if (trailingWidget != null) trailingWidget,
            if (trailingWidget == null)
              Icon(
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

    return BlocListener<LogoutBloc, LogoutState>(
      listener: (context, state) {
        final logoutStatus = state.status;

        if(logoutStatus == LogoutStatus.loading){
          LoadingDialog.show(context);
        }

        if(logoutStatus == LogoutStatus.failed){
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errors!.message),
            backgroundColor: Theme.of(context).colorScheme.error,
          ));
        }

        if(logoutStatus == LogoutStatus.success){
          context.pop();
          context.go('/');
        }
      },
      child: Scaffold(
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
              onTap: () async {
                final Uri uri = Uri.parse('https://murciawd.gov.ph/about-us');
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                } else {
                  Logger().i('cannot open url');
                }
              },
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
              'Meter calculator',
              leadingIcon: Icons.gas_meter,
              subtitle: 'Check your current consumption',
              onTap: () {},
              active: false,
            ),
            /*_navItem(
            'Notifications',
            leadingIcon: Icons.notifications_active,
            subtitle: 'Turn notifications on or off',
            trailingWidget: Switch(value: _notifActive, onChanged: (bool value){
              setState(() {
                _notifActive = value;
              });
            })
          ),*/
            /*_navItem(
              'Biometrics',
              leadingIcon: Icons.fingerprint_rounded,
              subtitle: 'Enable biometrics on or off',
              trailingWidget: Switch(value: _biometricActive, onChanged: (bool value){
                setState(() {
                  _biometricActive = value;
                });
              })
          ),*/
            _navItem(
              'Logout',
              leadingIcon: Icons.logout_rounded,
              subtitle: 'Logout your account',
              onTap: () {
                context.read<LogoutBloc>().add(const LogoutEvent.onLogout());
              },
            ),
            _navItem('Version',
                subtitle: 'Tap to check for latest version',
                trailingWidget: Text(
                  'v1.0.0',
                  style: textStyle.bodyLarge,
                ),
                onTap: () {}),
            const Divider(
              height: 30,
            ),
            _navItem(
              'Delete Account',
              titleColor: Theme.of(context).colorScheme.error,
              leadingIcon: Icons.delete_forever_rounded,
              subtitle: 'This action cannot be undone',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/blocs/otp/otp_bloc.dart';
import 'package:pinput/pinput.dart';

class SuccessRegistrationPage extends StatefulWidget {
  const SuccessRegistrationPage({super.key});

  @override
  State<SuccessRegistrationPage> createState() =>
      _SuccessRegistrationPageState();
}

class _SuccessRegistrationPageState extends State<SuccessRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          const SizedBox(height: 150),
          SvgPicture.asset(
            'assets/illustrations/success_registration_illustration.svg',
          ),
          const SizedBox(height: 60),
          Center(
              child: Text(
            'SUCCESS!',
            style: textStyle.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
                color: Theme.of(context).primaryColor),
          )),
          const SizedBox(height: 10),
          Center(
              child: Text(
            'Your all set. You can now view \nyour water bill in real time.',
            textAlign: TextAlign.center,
            style: textStyle.bodyMedium,
          )),
          const SizedBox(height: 60),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: FilledButton(
              onPressed: () {
                context.go('/home');
              },
              child: const Text('Go to Home'),
            ),
          ),
        ],
      ),
    );
  }
}

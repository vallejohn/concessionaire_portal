import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mwd_concessionaire_portal/core/form_validator/form_validators.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';

import '../../../core/local_route.dart';
import '../../blocs/forgot_password/forgot_password_bloc.dart';
import '../../blocs/otp/otp_bloc.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    final usernameField = TextFormField(
      controller: _usernameController,
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'Enter Username',
      ),
      validator: (value) => EmptyFieldValidator.dirty(value).error,
    );

    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
        listener: (context, state) {
          if(state.status == ForgotPasswordStatus.success){
            context.go(LocalRoute.otp(
              OTPPurpose.forgotPassword,
              state.phone,
            ).path);
          }

          if (state.status == ForgotPasswordStatus.failed) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.message),
              backgroundColor: Theme.of(context).colorScheme.error,
            ));
          }
        },
        builder: (context, state) {
          return ListView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              const SizedBox(height: 170),
              SvgPicture.asset(
                'assets/illustrations/forgot_password_illustration.svg',
              ),
              const SizedBox(height: 50),
              Center(
                child: Text(
                  'FORGOT PASSWORD',
                  style: textStyle.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    Text(
                      'Enter your username below, and we’ll '
                      'send you a verification code to reset your password.',
                      style: textStyle.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    usernameField,
                    const SizedBox(height: 15),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FilledButton(
                        onPressed: () async {
                          context.read<ForgotPasswordBloc>().add(
                              ForgotPasswordEvent.onVerifyMobile(
                                  ForgotPasswordParams(
                                      username: _usernameController.text)));
                        },
                        child: const Text('Send Verification Code'),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

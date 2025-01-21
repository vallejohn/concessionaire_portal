import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    final usernameField = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'Enter Mobile Number',
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        children: [
          const SizedBox(height: 170,),
          SvgPicture.asset('assets/illustrations/forgot_password_illustration.svg'),
          const SizedBox(height: 50,),
          Center(
            child: Text(
              'RESET PASSWORD',
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
                  'Enter your registered phone number below, and we’ll send you a verification code to reset your password.',
                  style: textStyle.bodySmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30,),
                usernameField,
                const SizedBox(height: 15,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: FilledButton(
                    onPressed: () async {

                    },
                    child: const Text('Send Verification Code'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

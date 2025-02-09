import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mwd_concessionaire_portal/core/form_validator/form_validators.dart';
import 'package:mwd_concessionaire_portal/core/router/app_router.dart';
import 'package:mwd_concessionaire_portal/demo_pages/home_page.dart';
import 'package:mwd_concessionaire_portal/demo_pages/register_page.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/blocs/login/login_bloc.dart';

import '../../../../core/util/cubit/widget_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final WidgetCubit<bool> _passwordVisibilityCubit = WidgetCubit<bool>(false);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    final emailField = TextFormField(
      controller: _usernameController,
      //keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'Email address',
      ),
      //validator: (value) => EmailValidator.dirty(value).error,
    );

    final passwordField = BlocBuilder<WidgetCubit<bool>, bool>(
        bloc: _passwordVisibilityCubit,
        builder: (context, visible) {
          return TextFormField(
            controller: _passwordController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: !visible,
            decoration: InputDecoration(
              hintText: 'Password',
              suffixIcon: IconButton(
                onPressed: () {
                  _passwordVisibilityCubit.onUpdateState(!visible);
                },
                icon: Icon(visible ? Icons.visibility : Icons.visibility_off),
              ),
            ),
            validator: (value) => PasswordValidator.dirty(value).error,
          );
        });

    loginButton(LoginBloc loginBloc) => SizedBox(
          width: MediaQuery.of(context).size.width,
          child: FilledButton(
            onPressed: () async {
              loginBloc.add(LoginEvent.doLogin(
                LoginParams(
                  username: _usernameController.text,
                  password: _passwordController.text,
                ),
              ));
            },
            child: loginBloc.state.loginStatus == LoginStatus.loading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                      strokeWidth: 2,
                    ))
                : const Text('Login'),
          ),
        );

    final forgotPasswordLink = Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        child: Text(
          'Forgot password?',
          style: textStyle.bodyLarge?.copyWith(
            color: Theme.of(context).primaryColor,
          ),
        ),
        onTap: () {
          context.go('/login/forgotPassword');
        },
      ),
    );

    final registerButton = SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        onPressed: () {
          context.go('/login/register');
        },
        child: const Text('Register'),
      ),
    );

    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.loginStatus == LoginStatus.success) {
            if (state.user!.phoneVerifiedAt.isEmpty) {
              context.go('/otp');
            } else {
              context.go('/home');
            }
          }

          if (state.loginStatus == LoginStatus.failed) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.message),
              backgroundColor: Theme.of(context).colorScheme.error,
            ));
          }
        },
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            final loginBloc = context.read<LoginBloc>();
            return SafeArea(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 50,
                ),
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                children: [
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 60,
                          ),
                          const SizedBox(height: 50),
                          Text(
                            'LOGIN',
                            style: textStyle.headlineLarge?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).primaryColor),
                          ),
                          Text(
                            'Login to Murcia Water District portal',
                            style: textStyle.bodyMedium,
                          ),
                          const SizedBox(height: 20),
                          emailField,
                          const SizedBox(height: 10),
                          passwordField,
                          const SizedBox(height: 15),
                          forgotPasswordLink,
                          const SizedBox(height: 15),
                          loginButton(loginBloc),
                          const SizedBox(height: 10),
                          registerButton,
                        ],
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

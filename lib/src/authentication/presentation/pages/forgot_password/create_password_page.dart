import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mwd_concessionaire_portal/core/router/app_router.dart';

import '../../../../../core/form_validator/form_validators.dart';
import '../../../../../core/util/cubit/widget_cubit.dart';
import '../../../core/params.dart';
import '../../blocs/forgot_password/forgot_password_bloc.dart';

class CreatePasswordPage extends StatefulWidget {
  const CreatePasswordPage({super.key});

  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState> _passwordFormKey =
      GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _confirmPasswordFormKey =
      GlobalKey<FormFieldState>();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  final WidgetCubit<bool> _passwordVisibilityCubit = WidgetCubit<bool>(false);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    passwordForm(bool visible) {
      return TextFormField(
        key: _passwordFormKey,
        controller: _passwordController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: !visible,
        decoration: InputDecoration(
          hintText: 'Password',
          suffixIcon: IconButton(
            onPressed: () {
              _passwordVisibilityCubit.onUpdateState(!visible);
            },
            icon: Icon(visible
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined),
          ),
        ),
        validator: (value) => PasswordValidator.dirty(value).error,
      );
    }

    confirmPasswordForm(bool visible) {
      return TextFormField(
        key: _confirmPasswordFormKey,
        controller: _confirmPassController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: !visible,
        decoration: InputDecoration(
          hintText: 'Confirm Password',
          suffixIcon: IconButton(
            onPressed: () {
              _passwordVisibilityCubit.onUpdateState(!visible);
            },
            icon: Icon(visible
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined),
          ),
        ),
        validator: (value) => ConfirmPasswordValidator.dirty(
          _passwordFormKey.currentState!.value,
          value,
        ).error,
      );
    }

    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        if (state.createStatus == CreatePasswordStatus.success) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 50,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 50),
                      SvgPicture.asset(
                        'assets/illustrations/success_illustration.svg',
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'SUCCESS',
                        style: textStyle.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).primaryColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Your password has been reset '
                            'successfully. You can now '
                            'log in with your new password.',
                        style: textStyle.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: FilledButton(
                            onPressed: (){
                              context.go('/login');
                            },
                            child: const Text('Login')),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }

        if (state.createStatus == CreatePasswordStatus.failed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errors!.message),
            backgroundColor: Theme.of(context).colorScheme.error,
          ));
        }
      },
      builder: (context, state) {
        final loading = state.createStatus == CreatePasswordStatus.loading;
        resetPassword() {
          if (_formKey.currentState!.validate() && !loading) {
            context.read<ForgotPasswordBloc>().add(
                  ForgotPasswordEvent.onCreateNewPassword(
                    ForgotPasswordParams(
                      password: _passwordController.text,
                      confirmPassword: _confirmPassController.text,
                    ),
                  ),
                );
          }
        }

        return Scaffold(
          body: ListView(
            padding: const EdgeInsets.all(40),
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              const SizedBox(height: 150),
              SvgPicture.asset(
                'assets/illustrations/create_password_illustration.svg',
              ),
              const SizedBox(height: 80),
              Center(
                  child: Text(
                'CHOOSE NEW PASSWORD',
                style: textStyle.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor),
              )),
              const SizedBox(height: 10),
              Center(
                  child: Text(
                'Create a new password for your account. '
                'Make sure it’s strong and secure.',
                textAlign: TextAlign.center,
                style: textStyle.bodySmall,
              )),
              const SizedBox(height: 20),
              BlocBuilder<WidgetCubit<bool>, bool>(
                bloc: _passwordVisibilityCubit,
                builder: (context, visible) {
                  return Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        passwordForm(visible),
                        const SizedBox(height: 10),
                        confirmPasswordForm(visible),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: FilledButton(
                            onPressed: () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              resetPassword();
                            },
                            child: loading
                                ? const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      backgroundColor: Colors.white,
                                      strokeWidth: 2,
                                    ))
                                : const Text('Reset Password'),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

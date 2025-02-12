import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mwd_concessionaire_portal/core/form_validator/form_validators.dart';
import 'package:mwd_concessionaire_portal/core/util/cubit/widget_cubit.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';

import '../../core/local_route.dart';
import '../blocs/sign_up/sign_up_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState> _passwordFormKey =
      GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _confirmPasswordFormKey =
      GlobalKey<FormFieldState>();

  final TextEditingController _usernameFieldController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  final WidgetCubit<bool> _passwordVisibilityCubit = WidgetCubit<bool>(false);
  final WidgetCubit<bool> _confirmPassVisibilityCubit =
      WidgetCubit<bool>(false);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    final usernameField = TextFormField(
      controller: _usernameFieldController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'Username',
      ),
      validator: (value) => SpecialCharacterValidator.dirty(value).error,
    );

    final phoneNumberField = TextFormField(
      controller: _phoneNumberController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'Phone Number',
      ),
      validator: (value) => PhoneNumberValidator.dirty(value).error,
    );

    final firstNameField = TextFormField(
      controller: _firstNameController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'First Name',
      ),
      validator: (value) => EmptyFieldValidator.dirty(value).error,
    );

    final lastNameField = TextFormField(
      controller: _lastNameController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'Last Name',
      ),
      validator: (value) => EmptyFieldValidator.dirty(value).error,
    );

    final passwordField = BlocBuilder<WidgetCubit<bool>, bool>(
      bloc: _passwordVisibilityCubit,
      builder: (context, visible) {
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
              icon: Icon(visible? Icons.visibility : Icons.visibility_off),
            ),
          ),
          validator: (value) => PasswordValidator.dirty(value).error,
        );
      }
    );

    final confirmPasswordField = BlocBuilder<WidgetCubit<bool>, bool>(
      bloc: _confirmPassVisibilityCubit,
      builder: (context, visible) {
        return TextFormField(
          key: _confirmPasswordFormKey,
          controller: _confirmPassController,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: !visible,
          decoration: InputDecoration(
            hintText: 'Confirm Password',
            suffixIcon: IconButton(
              onPressed: () {
                _confirmPassVisibilityCubit.onUpdateState(!visible);
              },
              icon: Icon(visible? Icons.visibility : Icons.visibility_off),
            ),
          ),
          validator: (value) => ConfirmPasswordValidator.dirty(
            _passwordFormKey.currentState!.value,
            value,
          ).error,
        );
      }
    );

    final addressField = TextFormField(
      controller: _addressController,
      decoration: const InputDecoration(hintText: 'Address'),
    );

    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {
          if (state.signUpStatus == SignUpStatus.success) {
            context.go(LocalRoute.otp(
              _phoneNumberController.text,
              username: _usernameFieldController.text,
              password: _passwordController.text,
            ).path);
          }

          if (state.signUpStatus == SignUpStatus.failed) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.message),
              backgroundColor: Theme.of(context).colorScheme.error,
            ));
          }
        },
        builder: (context, state) {
          final signUpBloc = context.read<SignUpBloc>();
          final loading = state.signUpStatus == SignUpStatus.loading;

          void doSignUp() {
            if (_formKey.currentState!.validate()) {
              signUpBloc.add(SignUpEvent.doSignUp(
                SignupParams(
                  username: _usernameFieldController.text,
                  phone: _phoneNumberController.text,
                  firstName: _firstNameController.text,
                  lastName: _lastNameController.text,
                  password: _passwordController.text,
                  confirmPassword: _confirmPassController.text,
                  address: _addressController.text,
                ),
              ));
            }
          }

          return SafeArea(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 20,
              ),
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign up',
                        style: textStyle.titleLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).primaryColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            'Fill in the details below to get started. '
                            'It only takes a few minutes!',
                            style: textStyle.bodyMedium,
                          )),
                      const SizedBox(height: 30),
                      usernameField,
                      const SizedBox(height: 10),
                      phoneNumberField,
                      const SizedBox(height: 10),
                      firstNameField,
                      const SizedBox(height: 10),
                      lastNameField,
                      const SizedBox(height: 10),
                      passwordField,
                      const SizedBox(height: 10),
                      confirmPasswordField,
                      const SizedBox(height: 30),
                      addressField,
                      const SizedBox(height: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: FilledButton(
                            onPressed: doSignUp,
                            child: loading
                                ? const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      backgroundColor: Colors.white,
                                      strokeWidth: 2,
                                    ))
                                : const Text('Register')),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mwd_concessionaire_portal/demo_pages/home_page.dart';
import 'package:mwd_concessionaire_portal/demo_pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  bool _loggingIn = false;
  bool _passwordVisibility = false;

  Future<void> _doLogin()async {
    if (_formKey.currentState!.validate()) {
      setState(() => _loggingIn = true);
      await Future.delayed(const Duration(seconds: 3));
      setState(() => _loggingIn = false);
      if(mounted){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomePage()));
      }
    }
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Email is valid!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            Form(
              key: _formKey,
                child: Column(
              children: [
                const CircleAvatar(radius: 60,),
                const SizedBox(height: 50),
                Text('LOGIN', style: textStyle.headlineLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).primaryColor
                ),),
                Text('Login to Murcia Water District portal', style: textStyle.bodyMedium,),
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    hintText: 'Email address',
                  ),
                  validator: _validateEmail,
                ),
                const SizedBox(height: 10),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: !_passwordVisibility,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          _passwordVisibility = !_passwordVisibility;
                        });
                      }, icon: Icon(!_passwordVisibility? Icons.visibility_off : Icons.visibility),
                    ),
                  ),
                  validator: _validatePassword,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: FilledButton(
                    onPressed: ()async {
                      await _doLogin();
                    }, child: _loggingIn? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(backgroundColor: Colors.white, strokeWidth: 2,)) :  const Text('Login'),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegisterPage()));
                    }, child: const Text('Register'),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

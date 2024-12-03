import 'package:flutter/material.dart';
import 'package:mwd_concessionaire_portal/demo_pages/otp_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  bool _registering = false;

  Future<void> _doRegister()async {
    setState(() => _registering = true);
    await Future.delayed(const Duration(seconds: 4));
    if(mounted){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const OtpPage()));
    }
    setState(() => _registering = false);
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            Form(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('REGISTER', style: textStyle.headlineLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor
                ),),
                Text('Please enter your details', style: textStyle.bodyMedium,),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Account number'
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'First name'
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Last name'
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: (){

                      }, icon: const Icon(Icons.visibility_off),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
                    suffixIcon: IconButton(
                      onPressed: (){

                      }, icon: const Icon(Icons.visibility_off),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Address'
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: FilledButton(onPressed: (){
                    _doRegister();
                  }, child: _registering? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(backgroundColor: Colors.white, strokeWidth: 2,)) : const Text('Register')),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

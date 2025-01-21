import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'home_page.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {

  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());
  final List<TextEditingController> _controllers =
  List.generate(6, (_) => TextEditingController());

  bool _confirmingOtp = false;

  void _confirmOtp()async {
    setState(() => _confirmingOtp = true);
    await Future.delayed(const Duration(seconds: 3));
    if(mounted){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomePage()));
    }
    setState(() => _confirmingOtp = false);
  }

  void _moveToNextField(String value, int index) {
    if (value.isNotEmpty) {
      if (index < _focusNodes.length - 1) {
        FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
      } else {
        _focusNodes[index].unfocus(); // Unfocus the last field
      }
    }
  }

  void _moveToPreviousField(RawKeyEvent event, int index) {
    if (event is RawKeyDownEvent && event.logicalKey == LogicalKeyboardKey.backspace) {
      if (_controllers[index].text.isEmpty && index > 0) {
        _controllers[index - 1].clear();
        FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          const SizedBox(
            height: 150,
          ),
          SvgPicture.asset('assets/illustrations/otp_illustration.svg'),
          const SizedBox(
            height: 40,
          ),
          Center(child: Text('Enter confirmation code'.toUpperCase(), style: textStyle.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: Theme.of(context).primaryColor),)),
          const SizedBox(
            height: 10,
          ),
          Center(child: Text('Enter the 6-digit code sent to your registered phone number or email. '
              'If you didn\'t receive the code, you can request a new one after 60 seconds.',
            textAlign: TextAlign.center,
            style: textStyle.bodySmall,)),
          const SizedBox(
            height: 60,
          ),
          Form(child: Row(
            children: List.generate(6, (index){
              return Expanded(child: Padding(
                padding: const EdgeInsets.all(2),
                child: RawKeyboardListener(
                  focusNode: FocusNode(),
                  onKey: (event) => _moveToPreviousField(event, index),
                  child: TextFormField(
                    style: textStyle.titleLarge?.copyWith(fontWeight: FontWeight.w700),
                    controller: _controllers[index],
                    focusNode: _focusNodes[index],
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (value) => _moveToNextField(value, index),
                  ),
                ),
              ));
            }))
          ),
          const SizedBox(height: 20,),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: FilledButton(
              onPressed: () {
                _confirmOtp();
              }, child: _confirmingOtp? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(backgroundColor: Colors.white, strokeWidth: 2,)) :  const Text('Confirm OTP'),
            ),
          ),
        ],
      ),
    );
  }
}

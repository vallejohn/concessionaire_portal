import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingDialog{
  static void show(BuildContext context){
    showDialog(
      barrierDismissible: false,
      barrierColor: Colors.white.withOpacity(0.4),
      context: context,
      builder: (context) => const LottieLoadingDialog(),
    );
  }
}

class LottieLoadingDialog extends StatefulWidget {
  const LottieLoadingDialog({super.key});

  @override
  State<LottieLoadingDialog> createState() => _LottieLoadingDialogState();
}

class _LottieLoadingDialogState extends State<LottieLoadingDialog>  with SingleTickerProviderStateMixin{
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Lottie.asset(
        width: 200,
        height: 200,
        'assets/lottie/loading.json',
        controller: _controller,
        onLoaded: (composition) {
          _controller..duration = composition.duration
            ..repeat();
        },
      ),
    );
  }
}

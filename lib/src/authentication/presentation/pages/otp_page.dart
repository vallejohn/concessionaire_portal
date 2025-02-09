import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mwd_concessionaire_portal/src/authentication/core/params.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/blocs/otp/otp_bloc.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final _focusNode = FocusNode();
  final _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Scaffold(
      body: BlocConsumer<OtpBloc, OtpState>(
        listener: (context, state){
          if(state.status == OTPStatus.success){
            context.go('/home');
          }

          if(state.status == OTPStatus.failed){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.message),
              backgroundColor: Theme.of(context).colorScheme.error,
            ));
          }
        },
        builder: (context, state) {
          final loading = state.status == OTPStatus.loading;

          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            children: [
              const SizedBox(
                height: 150,
              ),
              SvgPicture.asset('assets/illustrations/otp_illustration.svg'),
              const SizedBox(
                height: 40,
              ),
              Center(
                  child: Text(
                'Enter confirmation code'.toUpperCase(),
                style: textStyle.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor),
              )),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                'Enter the 6-digit code sent to your registered phone number or email. '
                'If you didn\'t receive the code, you can request a new one after 60 seconds.',
                textAlign: TextAlign.center,
                style: textStyle.bodySmall,
              )),
              const SizedBox(
                height: 60,
              ),
              Pinput(
                controller: _otpController,
                focusNode: _focusNode,
                autofocus: true,
                keyboardType: TextInputType.number,
                autofillHints: const [AutofillHints.oneTimeCode],
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                defaultPinTheme: PinTheme(
                  width: MediaQuery.of(context).size.width,
                  height: 74,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  textStyle: textStyle.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                length: 6,
                onChanged: (String value) {

                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FilledButton(
                  onPressed: () {
                    context.read<OtpBloc>().add(OtpEvent.onConfirmOTP(OTPParams(
                        phone: '', otp: _otpController.text
                    )));
                  },
                  child: loading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white,
                            strokeWidth: 2,
                          ))
                      : const Text('Confirm OTP'),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}

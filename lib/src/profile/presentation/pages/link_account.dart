import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mwd_concessionaire_portal/core/router/app_router.dart';
import 'package:mwd_concessionaire_portal/core/util/widgets/loading.dart';
import 'package:mwd_concessionaire_portal/src/profile/core/params.dart';
import 'package:mwd_concessionaire_portal/src/profile/presentation/blocs/profile/profile_bloc.dart';

class LinkAccount extends StatefulWidget {
  const LinkAccount({super.key});

  @override
  State<LinkAccount> createState() => _LinkAccountState();
}

class _LinkAccountState extends State<LinkAccount> {
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _accountNoController = TextEditingController();
  final TextEditingController _billNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        final linkStatus = state.accountState.addAccountStatus;

        if(linkStatus == AddAccountStatus.loading){
          LoadingDialog.show(context);
        }

        if(linkStatus == AddAccountStatus.failed){
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.accountState.error!.message),
            backgroundColor: Theme.of(context).colorScheme.error,
          ));
        }


        if(linkStatus == AddAccountStatus.success){
          context.pop();
          context.pop();
          context.read<ProfileBloc>().add(const ProfileEvent.onRequestData());
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.accountState.error!.message),
            backgroundColor: Colors.green,
          ));
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: ListView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: [
            const SizedBox(height: 100),
            SvgPicture.asset(
              'assets/illustrations/link_account_illustration.svg',
            ),
            const SizedBox(height: 40),
            Center(
              child: Text(
                'LINK NEW ACCOUNT',
                style: textStyle.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                'To link your account, please provide the details below',
                textAlign: TextAlign.center,
                style: textStyle.bodySmall,
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nicknameController,
                      decoration:
                          const InputDecoration(hintText: 'Account nickname'),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _accountNoController,
                      decoration:
                          const InputDecoration(hintText: 'Account number'),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _billNoController,
                      decoration:
                          const InputDecoration(hintText: 'Bill number'),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Ensure the information entered matches '
                      'your registered account details.',
                      textAlign: TextAlign.left,
                      style: textStyle.labelSmall?.copyWith(
                          color: const Color(0xff626262),
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FilledButton(
                          onPressed: () {
                            context.read<ProfileBloc>().add(
                                  ProfileEvent.onLinkNewAccount(
                                    LinkAccountParams(
                                      alias: _nicknameController.text,
                                      accountNo: _accountNoController.text,
                                      billNo: _billNoController.text,
                                    ),
                                    _nicknameController.text,
                                  ),
                                );
                          },
                          child: const Text('Confirm')),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

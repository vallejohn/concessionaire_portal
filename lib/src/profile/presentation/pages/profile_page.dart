import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/widgets/empty_account_widget.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/blocs/login/login_bloc.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';
import 'package:mwd_concessionaire_portal/src/profile/presentation/blocs/profile/profile_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/util/widgets/loading.dart';

class ProfilePage extends StatefulWidget {
  final List<Account> linkedAccounts;
  const ProfilePage({super.key, required this.linkedAccounts});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _tagController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final user = context.read<LoginBloc>().state.user!;
    final profileState = context.watch<ProfileBloc>().state;
    final profileLoading =
        profileState.accountState.status == AccountStatus.loading;

    final onAccountDeletion = profileState.accountState.accountDeleteSelection;

    final defaultAccountIcon = Align(
      alignment: Alignment.topRight,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
            ),
            color: Color(0xffDAF3FF)),
        child: Icon(
          Icons.star_outline,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );

    editNicknameDialog(Account account) {
      showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Edit nickname',
                      style: textStyle.titleLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _tagController,
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Expanded(
                            flex: 3,
                            child: SizedBox(),
                          ),
                          Expanded(
                            flex: 2,
                            child: TextButton(
                              onPressed: () {
                                context.pop();
                              },
                              child: const Text('Cancel'),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 2,
                            child: FilledButton(
                              onPressed: () {
                                context.pop();
                                context
                                    .read<ProfileBloc>()
                                    .add(ProfileEvent.onSaveAccountAlias(
                                      account.copyWith(
                                          alias: _tagController.text),
                                    ));
                              },
                              child: const Text('Ok'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          });
    }

    Widget cardItem(String label, String value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: textStyle.bodyLarge?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            value,
            style: textStyle.bodyLarge?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      );
    }

    Widget content(Account account) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              account.alias,
              style: textStyle.titleLarge?.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: cardItem(
                    'Account name',
                    account.fullName,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: cardItem(
                    'Account no.',
                    account.accountNumber,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            cardItem(
              'Address',
              account.address,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                cardItem(
                  'Status',
                  account.status,
                ),
                const Spacer(),
                if (!account.isDefault && !onAccountDeletion)
                  TextButton(
                    onPressed: () {
                      context.read<ProfileBloc>().add(
                            ProfileEvent.onSetDefaultAccount(
                              account.accountNumber,
                            ),
                          );
                    },
                    style: const ButtonStyle(
                      padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 2,
                      )),
                    ),
                    child: const Text('Set as default account'),
                  ),
              ],
            )
          ],
        ),
      );
    }

    Widget editButton(Account account) {
      return Material(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(8),
          topLeft: Radius.circular(8),
        ),
        color: onAccountDeletion ? Colors.red : const Color(0xff19AE46),
        child: InkWell(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(8),
            topLeft: Radius.circular(8),
          ),
          splashColor: Colors.white.withOpacity(0.2),
          onTap: () {
            if (onAccountDeletion) {
              if (profileState.accountState.deletionList.contains(account)) {
                context.read<ProfileBloc>().add(
                      ProfileEvent.onUpdateDeletionList(account, remove: true),
                    );
              } else {
                context.read<ProfileBloc>().add(
                      ProfileEvent.onUpdateDeletionList(
                        account,
                      ),
                    );
              }
            } else {
              _tagController.text = account.alias;
              editNicknameDialog(account);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                if (!onAccountDeletion)
                  const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                if (onAccountDeletion)
                  Text(
                    'DELETE',
                    style: textStyle.bodyLarge?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                if (onAccountDeletion)
                  Checkbox(
                    fillColor: WidgetStateProperty.all(Colors.transparent),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                    checkColor: Colors.white,
                    side: const BorderSide(color: Colors.white, width: 2),
                    value: profileState.accountState.deletionList
                        .contains(account),
                    onChanged: (bool? value) {
                      if (value != null) {
                        if (!value) {
                          context.read<ProfileBloc>().add(
                                ProfileEvent.onUpdateDeletionList(account,
                                    remove: true),
                              );
                        } else {
                          context.read<ProfileBloc>().add(
                                ProfileEvent.onUpdateDeletionList(
                                  account,
                                ),
                              );
                        }
                      } else {
                        context.read<ProfileBloc>().add(
                              ProfileEvent.onUpdateDeletionList(
                                account,
                              ),
                            );
                      }
                    },
                  )
              ],
            ),
          ),
        ),
      );
    }

    return BlocListener<ProfileBloc, ProfileState>(
      listenWhen: (prev, cur){
        final prevDeletionStatus = prev.accountState.accountDeletionStatus;
        final curDeletionStatus = cur.accountState.accountDeletionStatus;
        return prevDeletionStatus != curDeletionStatus;
      },
      listener: (context, state) {
        final deletionStatus = state.accountState.accountDeletionStatus;

        if(deletionStatus == AccountDeletionStatus.loading){
          LoadingDialog.show(context);
        }

        if(deletionStatus == AccountDeletionStatus.success){
          context.pop();
        }
        if(deletionStatus == AccountDeletionStatus.failed){
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.accountState.error!.message),
            backgroundColor: Theme.of(context).colorScheme.error,
          ));
        }
      },
      child: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          children: [
            const Center(
              child: CircleAvatar(radius: 50),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                '${user.firstName} ${user.lastName}',
                style: textStyle.displaySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor),
              ),
            ),
            Center(
              child: Text(
                'Unknown address',
                style: textStyle.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Accounts',
                  style: textStyle.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                FilledButton.icon(
                  style: !onAccountDeletion
                      ? null
                      : FilledButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    if (onAccountDeletion) {
                      context
                          .read<ProfileBloc>()
                          .add(const ProfileEvent.onExecuteDeletion());
                    } else {
                      context.go('/home/linkAccount');
                    }
                  },
                  label: Text(
                      onAccountDeletion ? 'Delete accounts' : 'Link account'),
                  icon: Icon(
                      onAccountDeletion ? Icons.delete_outline : Icons.add),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(height: 10),
            if (profileLoading)
              Shimmer.fromColors(
                baseColor: Colors.black.withOpacity(0.3),
                highlightColor: Colors.black.withOpacity(0.01),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(3, (index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8)),
                    );
                  }).toList(),
                ),
              ),
            if (!profileLoading)
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.linkedAccounts.length,
                itemBuilder: (context, index) {
                  final account = widget.linkedAccounts[index];
                  return Card(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onLongPress: onAccountDeletion
                          ? null
                          : () {
                              context.read<ProfileBloc>().add(
                                    const ProfileEvent
                                        .onActivateDeleteSelection(),
                                  );
                              context.read<ProfileBloc>().add(
                                    ProfileEvent.onUpdateDeletionList(account),
                                  );
                            },
                      child: Stack(
                        children: [
                          content(account),
                          if (account.isDefault) defaultAccountIcon,
                          if (account.isDefault || onAccountDeletion)
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: editButton(account),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}

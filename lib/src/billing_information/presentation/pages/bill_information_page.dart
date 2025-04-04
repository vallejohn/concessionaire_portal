import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:mwd_concessionaire_portal/core/util/extensions.dart';
import 'package:mwd_concessionaire_portal/core/widgets/empty_account_widget.dart';
import 'package:mwd_concessionaire_portal/src/authentication/presentation/blocs/login/login_bloc.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/presentation/blocs/billing_information/billing_information_bloc.dart';
import 'package:mwd_concessionaire_portal/src/profile/presentation/blocs/profile/profile_bloc.dart';
import 'package:shimmer/shimmer.dart';

class BillInformationPage extends StatefulWidget {
  const BillInformationPage({super.key});

  @override
  State<BillInformationPage> createState() => _BillInformationPageState();
}

class _BillInformationPageState extends State<BillInformationPage> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final profileState = context.watch<ProfileBloc>().state;
    final billingState = context.watch<BillingInformationBloc>().state;
    final loginState = context.watch<LoginBloc>().state;

    final user = loginState.user;

    final accountState = profileState.accountState;
    final displayedAccount = accountState.displayedAccount;
    final profileLoading = accountState.status == AccountStatus.loading;
    final accounts = accountState.linkedAccounts;

    final latestBill = billingState.latestBill;
    final billStatus = billingState.status;
    final billLoading =
        billStatus == BillingInformationStatus.loading ||
            billStatus == BillingInformationStatus.initial;
    final billingInformation = billingState.billHistory;

    return BlocListener<ProfileBloc, ProfileState>(
      listenWhen: (prev, cur) {
        final prevAcc = prev.accountState.displayedAccount;
        final curAcc = cur.accountState.displayedAccount;

        return prevAcc != curAcc;
      },
      listener: (context, state) {
        final accountNo = state.accountState.displayedAccount!.accountNumber;
        BlocProvider.of<BillingInformationBloc>(context).add(
          BillingInformationEvent.onRequestBillingHistory(accountNo),
        );
      },
      child: BlocBuilder<BillingInformationBloc, BillingInformationState>(
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Hi, ${user!.firstName}!',
                    style: textStyle.bodyLarge,
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: Theme.of(context).primaryColor,
                          )),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor:
                                Theme.of(context).colorScheme.error,
                          ))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              if(accounts.isEmpty)
                const Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: EmptyAccountWidget(),
                ),

              if(accounts.isNotEmpty)
              Column(
                children: [
                  Card(
                    elevation: 0,
                    color: Theme.of(context).primaryColor,
                    child: AnimatedSize(
                      duration: const Duration(milliseconds: 200),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (profileLoading)
                              Shimmer.fromColors(
                                  baseColor: Colors.white.withOpacity(0.3),
                                  highlightColor: Colors.white.withOpacity(0.01),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.black.withOpacity(0.3),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Container(
                                        height: 20,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.black.withOpacity(0.3),
                                        ),
                                      ),
                                    ],
                                  )),
                            if (!profileLoading && displayedAccount != null)
                              Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              if (displayedAccount.isDefault)
                                                Icon(
                                                  Icons.star,
                                                  color: Theme.of(context)
                                                      .scaffoldBackgroundColor,
                                                  size: 15,
                                                ),
                                              if (displayedAccount.isDefault)
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                              Text(
                                                displayedAccount.alias,
                                                style: textStyle.bodyLarge?.copyWith(
                                                    color: Theme.of(context)
                                                        .scaffoldBackgroundColor),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            displayedAccount.accountNumber,
                                            style: textStyle.titleLarge?.copyWith(
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      )),
                                  if (accounts.length > 1)
                                    IconButton(
                                      highlightColor: Colors.white.withOpacity(0.1),
                                      splashColor: Colors.white,
                                      onPressed: () {
                                        context.read<ProfileBloc>().add(
                                            const ProfileEvent
                                                .onNavigateAccount(
                                              AccountNavigation.previous,
                                            ));
                                      },
                                      icon: Icon(
                                        Icons.arrow_back_ios_rounded,
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor,
                                      ),
                                    ),
                                  if (accounts.length > 1)
                                    const SizedBox(
                                      width: 5,
                                    ),
                                  if (accounts.length > 1)
                                    IconButton(
                                      highlightColor: Colors.white.withOpacity(0.1),
                                      splashColor: Colors.white,
                                      onPressed: () {
                                        context.read<ProfileBloc>().add(
                                            const ProfileEvent
                                                .onNavigateAccount(
                                              AccountNavigation.next,
                                            ));
                                      },
                                      icon: Icon(Icons.arrow_forward_ios_rounded,
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor),
                                    ),
                                ],
                              ),
                            const SizedBox(
                              height: 20,
                            ),
                            if (!billLoading)
                              Text(
                                'Outstanding Balance',
                                style: textStyle.titleMedium?.copyWith(
                                    color:
                                    Theme.of(context).scaffoldBackgroundColor),
                              ),
                            if (billLoading)
                              Shimmer.fromColors(
                                baseColor: Colors.white.withOpacity(0.3),
                                highlightColor: Colors.white.withOpacity(0.01),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 15,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Container(
                                      height: 40,
                                      width: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            if (!billLoading && latestBill != null)
                              Text(
                                'P ${latestBill.totalAmount}',
                                style: textStyle.displayMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).scaffoldBackgroundColor,
                                ),
                              ),
                            const Divider(),
                            if (billLoading)
                              Shimmer.fromColors(
                                baseColor: Colors.white.withOpacity(0.3),
                                highlightColor: Colors.white.withOpacity(0.01),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.black.withOpacity(0.3),
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          height: 15,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.black.withOpacity(0.3),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.black.withOpacity(0.3),
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          height: 15,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.black.withOpacity(0.3),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Container(
                                          height: 24,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.black.withOpacity(0.3),
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          height: 24,
                                          width: 140,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.black.withOpacity(0.3),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            if (!billLoading && latestBill != null)
                              Row(
                                children: [
                                  Text(
                                    'Statement date',
                                    style: textStyle.bodyLarge?.copyWith(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor),
                                  ),
                                  const Spacer(),
                                  Text(
                                    latestBill.billMonth.toMonthDayYear(),
                                    style: textStyle.bodyLarge?.copyWith(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor),
                                  ),
                                ],
                              ),
                            if (!billLoading && latestBill != null)
                              Row(
                                children: [
                                  Text(
                                    'Disconnection date',
                                    style: textStyle.bodyLarge?.copyWith(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor),
                                  ),
                                  const Spacer(),
                                  Text(
                                    latestBill.disconnectionDate.toMonthDayYear(),
                                    style: textStyle.bodyLarge?.copyWith(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor),
                                  ),
                                ],
                              ),
                            if (!billLoading)
                              const SizedBox(
                                height: 10,
                              ),
                            if (!billLoading && latestBill != null)
                              Row(
                                children: [
                                  Text(
                                    'Due date',
                                    style: textStyle.titleLarge?.copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor),
                                  ),
                                  const Spacer(),
                                  Text(
                                    latestBill.dueDate.toMonthDayYear(),
                                    style: textStyle.titleLarge?.copyWith(
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Billing History',
                      style: textStyle.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (billLoading)
                    Shimmer.fromColors(
                        baseColor: Colors.black.withOpacity(0.3),
                        highlightColor: Colors.black.withOpacity(0.01),
                        child: Column(
                          children: List.generate(5, (index) {
                            return Container(
                              margin: const EdgeInsets.only(bottom: 8),
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.black.withOpacity(0.3),
                              ),
                            );
                          }),
                        )),
                  if (!billLoading)
                    Column(
                      children: List.generate(billingInformation.length, (index) {
                        final bill = billingInformation[index];

                        String status = '';
                        Color statusColor = Colors.white;

                        if(bill.status == 'paid'){
                          status = 'Paid';
                          statusColor = const Color(0xff19AE46);
                        }else if(bill.status == 'not_paid'){
                          status = 'Unpaid';
                          statusColor = const Color(0xffBA0000);
                        }

                        return Card(
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(bill.billMonth.toMonthDayYear(),
                                                style: textStyle.bodyLarge),
                                            const Spacer(),
                                            Text('Bill No: ',
                                                style: textStyle.bodyLarge),
                                            Text(
                                              bill.billNo,
                                              style: textStyle.bodyLarge?.copyWith(
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Amount Due',
                                              style: textStyle.titleMedium,
                                            ),
                                            Text(
                                              'P ${bill.totalAmount}',
                                              style: textStyle.titleLarge?.copyWith(
                                                fontWeight: FontWeight.w600,
                                                color:
                                                Theme.of(context).primaryColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Payment date: ',
                                              style: textStyle.bodyLarge,
                                            ),
                                            Text(
                                              bill.dueDate.toMonthDayYear(),
                                              style: textStyle.bodyLarge?.copyWith(
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      color: statusColor),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 5),
                                    child: Text(
                                      status,
                                      style: textStyle.bodyLarge?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}

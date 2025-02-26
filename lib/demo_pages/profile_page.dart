import 'package:flutter/material.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/models/account.dart';

class ProfilePage extends StatefulWidget {
  final List<Account> linkedAccounts;
  const ProfilePage({super.key, required this.linkedAccounts});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    Widget cardItem(String label, String value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style:
                  textStyle.bodyLarge?.copyWith(fontWeight: FontWeight.w400)),
          Text(value,
              style:
                  textStyle.bodyLarge?.copyWith(fontWeight: FontWeight.w500)),
        ],
      );
    }

    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        children: [
          const Center(
            child: CircleAvatar(
              radius: 50,
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Text(
              'Lena Jane',
              style: textStyle.displaySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          Center(
            child: Text(
              '123 Water Lane, Hydration City',
              style: textStyle.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
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
                onPressed: () {},
                label: const Text('Link account'),
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.linkedAccounts.length,
            itemBuilder: (context, index) {
              final account = widget.linkedAccounts[index];
              return Card(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
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
                                child: cardItem('Account name', account.name),
                              ),
                              Expanded(
                                flex: 1,
                                child: cardItem('Account no.', account.number),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          cardItem('Address', account.address),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              cardItem('Status', account.status),
                              const Spacer(),
                              if(!account.isDefault) TextButton(onPressed: (){
                                
                              }, child: const Text('Set as default account')),
                            ],
                          )
                        ],
                      ),
                    ),
                    if(account.isDefault) Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        padding: const EdgeInsets.all(10),
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
                    ),
                    if(account.isDefault) Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(8),
                              topLeft: Radius.circular(8),
                            ),
                            color: Color(0xff19AE46)),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

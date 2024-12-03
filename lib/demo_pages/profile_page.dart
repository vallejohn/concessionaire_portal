import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Profile data variables
  late String profilePictureUrl;
  late String fullName;
  late String phoneNumber;
  late String address;
  late String status;
  late List<String> accounts;

  @override
  void initState() {
    super.initState();
    // Initialize profile data here
    profilePictureUrl = 'https://example.com/profile-picture.png'; // Replace with a real URL
    fullName = 'John Doe';
    phoneNumber = '+1234567890';
    address = '123 Water Lane, Hydration City';
    status = 'Active';
    accounts = [
      '00123456',
      '00234567',
      '00345678',
    ];
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
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
              fullName,
              style: textStyle.displaySmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            'Information',
            style: textStyle.titleLarge?.copyWith(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10,),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email/Phone', style: textStyle.bodyLarge),
                  Text(phoneNumber, style: textStyle.bodyLarge?.copyWith(fontWeight: FontWeight.w700),),
                  const SizedBox(height: 5),
                  Text('Address', style: textStyle.bodyLarge),
                  Text(address, style: textStyle.bodyLarge?.copyWith(fontWeight: FontWeight.w700),),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Accounts',
                style: textStyle.titleLarge?.copyWith(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w500),
              ),
              Text('List of your MWD accounts link to your profile.', style: textStyle.bodyLarge?.copyWith(color: Theme.of(context).disabledColor),),
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FilledButton.icon(onPressed: (){

                }, label: const Text('Link account'), icon: const Icon(Icons.add),),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: accounts.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.home, color: Theme.of(context).primaryColor,),
                              const SizedBox(width: 5,),
                              Text(
                                'Home',
                                style: textStyle.titleLarge?.copyWith(color: Theme.of(context).primaryColor, fontWeight: FontWeight.w500),
                              ),
                              const Spacer(),
                              FilledButton(onPressed: (){
                              }, child: const Text('Edit'))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Account name', style: textStyle.bodyLarge),
                              Text('John Doe', style: textStyle.bodyLarge?.copyWith(fontWeight: FontWeight.w700)),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Account no.', style: textStyle.bodyLarge),
                              Text(accounts[index], style: textStyle.bodyLarge?.copyWith(fontWeight: FontWeight.w700)),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Account status', style: textStyle.bodyLarge),
                              Row(
                                children: [
                                  const CircleAvatar(radius: 5, backgroundColor: Colors.green,),
                                  const SizedBox(width: 5,),
                                  Text('Active', style: textStyle.bodyLarge?.copyWith(fontWeight: FontWeight.w700)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

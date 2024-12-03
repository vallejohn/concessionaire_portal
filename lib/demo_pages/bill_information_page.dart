import 'package:flutter/material.dart';

class BillInformationPage extends StatefulWidget {
  const BillInformationPage({super.key});

  @override
  State<BillInformationPage> createState() => _BillInformationPageState();
}

class _BillInformationPageState extends State<BillInformationPage> {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      children: [
        Row(children: [
          const CircleAvatar(radius: 20,),
          const SizedBox(width: 15,),
          Text('Hi, John!', style: textStyle.bodyLarge,),
          const Spacer(),
          Stack(
            children: [
              IconButton(onPressed: (){

              }, icon: Icon(Icons.notifications, color: Theme.of(context).primaryColor,)),
              Positioned(bottom: 0, right: 0, child: CircleAvatar(radius: 5, backgroundColor: Theme.of(context).colorScheme.error,))
            ],
          )
        ],),
        const SizedBox(height: 30,),
        Card(
          elevation: 0,
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Theme.of(context).scaffoldBackgroundColor, size: 15,),
                            const SizedBox(width: 5,),
                            Text('Home', style: textStyle.bodyLarge?.copyWith(color: Theme.of(context).scaffoldBackgroundColor),),
                          ],
                        ),
                        Text('0111227323', style: textStyle.titleLarge?.copyWith(color: Theme.of(context).scaffoldBackgroundColor, fontWeight: FontWeight.w500),),
                      ],
                    )),
                    IconButton(onPressed: (){
                    }, icon: Icon(Icons.arrow_back_ios_rounded, color: Theme.of(context).scaffoldBackgroundColor,)),
                    const SizedBox(width: 5,),
                    IconButton(onPressed: (){
                    }, icon: Icon(Icons.arrow_forward_ios_rounded, color: Theme.of(context).scaffoldBackgroundColor)),
                  ],
                ),
                const SizedBox(height: 20,),
                Text(
                  'Outstanding Balance',
                  style: textStyle.titleMedium?.copyWith(color: Theme.of(context).scaffoldBackgroundColor),
                ),
                Text(
                  'P 981.75',
                  style: textStyle.displayMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
                const Divider(),
                Row(
                  children: [
                    Text('Statement date', style: textStyle.bodyLarge?.copyWith(color: Theme.of(context).scaffoldBackgroundColor),),
                    const Spacer(),
                    Text('Nov. 16, 2024', style: textStyle.bodyLarge?.copyWith(color: Theme.of(context).scaffoldBackgroundColor),),
                  ],
                ),
                Row(
                  children: [
                    Text('Disconnection date', style: textStyle.bodyLarge?.copyWith(color: Theme.of(context).scaffoldBackgroundColor),),
                    const Spacer(),
                    Text('Dec. 3, 2024', style: textStyle.bodyLarge?.copyWith(color: Theme.of(context).scaffoldBackgroundColor),),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Text('Due date', style: textStyle.titleLarge?.copyWith(fontWeight: FontWeight.w700, color: Theme.of(context).scaffoldBackgroundColor),),
                    const Spacer(),
                    Text('Dec. 3, 2024', style: textStyle.titleLarge?.copyWith(color: Theme.of(context).scaffoldBackgroundColor),),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30,),
        Text(
          'Billing History',
          style: textStyle.titleLarge,
        ),
        const SizedBox(height: 10,),
        Column(
          children: List.generate(10, (index){
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('November 2024', style: textStyle.bodyLarge),
                        const Spacer(),
                        Text('Bill No: ', style: textStyle.bodyLarge),
                        Text('085464', style: textStyle.bodyLarge?.copyWith(fontWeight: FontWeight.w700),),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Amount Due',
                              style: textStyle.titleMedium,
                            ),
                            Text(
                              'P 27.00',
                              style: textStyle.titleLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Chip(label: Text('Paid'))
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Text('Payment date: ', style: textStyle.bodyLarge,),
                        Text('Nov. 16, 2024', style: textStyle.bodyLarge?.copyWith(fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ],
                )),
              ),
            );
          }),
        )
      ],
    );
  }
}

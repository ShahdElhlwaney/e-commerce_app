import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/home_pics/profile.jpg'),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Afsar Hossen',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.mode_edit_outline_outlined,
                            color: AppColors.appColor,
                          )
                        ],
                      ),
                      Text(
                        'Imshuvo97@gmail.com',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.grey, fontWeight: FontWeight.normal),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: .4,
                color: Colors.grey,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpansionTile(
                  title: Row(
                    children: [
                      const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Orders',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  textColor: Colors.black,
                  collapsedTextColor: AppColors.appColor,
                  children: const [
                    ListTile(
                      title: Text(''),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: .5,
                color: Colors.grey,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpansionTile(
                  title: Row(
                    children: [
                      const Icon(
                        Icons.pending,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'My Details',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  textColor: Colors.black,
                  collapsedTextColor: AppColors.appColor,
                  children: const [
                    ListTile(
                      title: Text(''),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: .5,
                color: Colors.grey,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpansionTile(
                  title: Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Delivery Address',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  textColor: Colors.black,
                  collapsedTextColor: AppColors.appColor,
                  children: const [
                    ListTile(
                      title: Text(''),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: .5,
                color: Colors.grey,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpansionTile(
                  title: Row(
                    children: [
                      const Icon(
                        Icons.payment,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Payment Methods',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  textColor: Colors.black,
                  collapsedTextColor: AppColors.appColor,
                  children: const [
                    ListTile(
                      title: Text(''),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: .5,
                color: Colors.grey,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpansionTile(
                  title: Row(
                    children: [
                      const Icon(
                        Icons.hourglass_empty,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Promo Cord',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  textColor: Colors.black,
                  collapsedTextColor: AppColors.appColor,
                  children: const [
                    ListTile(
                      title: Text(''),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: .5,
                color: Colors.grey,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpansionTile(
                  title: Row(
                    children: [
                      const Icon(
                        Icons.notifications_none,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Notifications ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  textColor: Colors.black,
                  collapsedTextColor: AppColors.appColor,
                  children: const [
                    ListTile(
                      title: Text(''),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: .5,
                color: Colors.grey,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpansionTile(
                  title: Row(
                    children: [
                      const Icon(
                        Icons.help_outline,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Help',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  textColor: Colors.black,
                  collapsedTextColor: AppColors.appColor,
                  children: const [
                    ListTile(
                      title: Text(''),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: .5,
                color: Colors.grey,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ExpansionTile(
                  title: Row(
                    children: [
                      const Icon(
                        Icons.height,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'About',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  textColor: Colors.black,
                  collapsedTextColor: AppColors.appColor,
                  children: const [
                    ListTile(
                      title: Text(''),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: .5,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    const Icon(
                      Icons.logout,
                      color: AppColors.appColor,
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Log Out',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: AppColors.appColor),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

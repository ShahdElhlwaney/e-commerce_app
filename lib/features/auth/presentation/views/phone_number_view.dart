import 'package:flutter/material.dart';

class PhoneNumberView extends StatelessWidget {
  const PhoneNumberView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: const Icon(Icons.arrow_back_ios),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward_ios),
        onPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              'Enter your mobile number',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.black),
            ),
             SizedBox(height: 16,),
             Text(
              'Mobile Number',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Colors.grey
              ),
            ),

            Form(
              autovalidateMode: AutovalidateMode.disabled,
              child: TextFormField(
                  onFieldSubmitted: (number) {},
                  decoration:  InputDecoration(
                      hintText: 'Enter your number',
                      isDense: true,
                      prefix: Row(
                        children: [
                          Image.asset('assets/app_pics/number_logo.png'),
                          SizedBox(width: 10,),
                          Text('88+')
                        ],
                      ),
                      labelStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

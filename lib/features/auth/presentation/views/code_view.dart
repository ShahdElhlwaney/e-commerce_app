


import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CodeView extends StatelessWidget {
  const CodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: const Icon(Icons.arrow_back_ios),
      ),
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(bottom: height*.2),
        child: FloatingActionButton(
          child: const Icon(Icons.arrow_forward_ios),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your 4-digit code',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.black),
            ),
            SizedBox(height: 16,),
            Text(
              'Code',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.grey
              ),
            ),

            Form(
              autovalidateMode: AutovalidateMode.disabled,
              child: TextFormField(
                  onFieldSubmitted: (number) {},
                  decoration:  const InputDecoration(
                      hintText: '----',
                      isDense: true,
                      labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: Colors.black)),
            ),
            Padding(
              padding:  EdgeInsets.only(top:MediaQuery.of(context)
                  .size.height*.5),
              child: Text(
                'Resend Code',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: AppColors.appColor
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

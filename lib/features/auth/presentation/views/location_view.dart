

import 'package:e_commerce/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

/*class LocationView extends StatelessWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
            return Scaffold(
                body: ListView(
                    children:[
                      //  IconButton(onPressed: (){
                      // Navigator.pop(context);
                      //},icon:Icon(Icons.arrow_back_ios,color:Colors.black,size: 25,),
                      // padding: EdgeInsets.only(right: 350,top: 5),),
                      Column(
                        children: [//,color:
                          Image.asset('assets/app_pics/location.png'),
                     Text( 'Select Your Location',
                       style: Theme.of(context).textTheme.displayLarge,),
                          Text( 'Swithch on your location to stay in tune with\n '
                              'what’s happening in your area',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodySmall,
                            ),
                          Padding(
                              padding: const EdgeInsets.only(left: 15,top: 320),
                              child: SelectState(onCountryChanged: (value){},
                                onCityChanged: (String city){
                                  cityName=city;
                                  print(cityName);
                                },
                                onStateChanged: (value){},
                              )
                          ),

                          // Textfield(labelText: 'your region',top: 500,left: 30,onChanged: (String region)=>regionName=region,hintText: "",),
                          Button(onPressed: (){
                            print(cityName);
                            AddressCubit.get(context).addNewAddress(
                                city: cityName!, region: regionName!, token:ShopLoginCubit.get(context).shopLoginModel!.data!.token! );
                          },text:'           Submit',top: 605,left: 53,)
                        ],
                      ),]
                )
            );

  }
}
*/
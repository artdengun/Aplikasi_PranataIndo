import 'package:desain_awal/constants.dart';
import 'package:desain_awal/size_config.dart';
import 'package:flutter/material.dart';

import 'complete_profil_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight  * 0.02,),
              Text(
                'Kelangkapan Aplikasi',
                style: headingStyle,
              ),
              Text("Lengkapi Profile anda untuk Melanjutkan ke \n Home Pranata", textAlign: TextAlign.center,),
              SizedBox(height: SizeConfig.screenHeight * 0.05,),
              CompleteProfilForm(),
              SizedBox(height: getProportionateScreenHeight(30),),
              Text(" By Continue kamu menyetujui atas \n peraturan yang berlaku ",
              textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}


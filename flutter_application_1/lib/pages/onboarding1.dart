
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/onboarding2.dart';
import 'package:flutter_application_1/theme.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
            child: Container(
              height: 467,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: backgroundOnBoardingCOlor,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Stack(
                children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 106),
                      child: Image.asset(
                        'assets/onboarding1.png', width: 237, height: 255.57,
                        ),
                    ),
                    SizedBox(
                      height: 45.43,
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset(
                    'assets/bulat.png', height: 10,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Image.asset(
                    'assets/bulat.png', height: 10, color: greyColor4,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Image.asset(
                    'assets/bulat.png', height: 10, color: greyColor4,
                    ),
                ],
                ),
                  ],
                ),
                
              ],),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Selamat datang di aplikasi\nBisaBelajar',
            style: blackSBTextStyle.copyWith(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Text(
              'Ini adalah sebuah aplikasi yang mendukung pendidikan utamanya bagi anak berkebutuhan khusus untuk dapat belajar lebih baik',
              style: greyRTextStyle.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 55,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              height: 46,
              child: ElevatedButton(
                child: Text(
                  'Next',
                  style: whiteSBTextStyle.copyWith(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoarding2()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) return greenColor;
                    return cyanColor;
                  },
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
    )
  )
              ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],),
      ),
    );
  }
}
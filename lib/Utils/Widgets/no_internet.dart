import 'package:app_settings/app_settings.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'CommonWidgets/fluid_button.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
             const Spacer(),
               Image.asset("lib/Assets/Images/nointernet.png"),
              const Spacer(),
               const AutoSizeText(
                "No Internet Connection",
                maxFontSize: 30,
                minFontSize: 15,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30,),
              ),
             const SizedBox(height: 30,),
              const AutoSizeText(
                "Please check your internet connection and try again.",
                maxFontSize: 18,
                minFontSize: 8,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              const Spacer(flex: 3),
              FluidButton(buttonName: 'Try Again', onPressed: () { AppSettings.openWIFISettings();},),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cripto_moedas/pages/home_page.dart';
import 'package:cripto_moedas/widgets/auth_check.dart';
import 'package:flutter/material.dart';
import 'constantes.dart';

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cripto Moedas',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: kCorYellow,
        ),
        // home: AuthCheck(),
        home: AnimatedSplashScreen(
            splash: Icons.attach_money_rounded,
            duration: 3000,
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: kCorSplashScreen,
            nextScreen: AuthCheck()));
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/auth/screens/login_screen.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class LandingScreen extends StatelessWidget {
  static const routeName = '/landing-screen';
  const LandingScreen({super.key});

   void navigateToLoginScreen(context){
    Navigator.pushNamed(context, LoginScreen.routeName);
   }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Welcome to WhatsApp',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: size.height / 9),
          Image.asset('assets/bg.png',
              height: 340, width: 340, color: tabColor),
          SizedBox(height: size.height / 9),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service.',
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: size.width * 0.75,
          ),
          SizedBox(
            width: size.width * 0.75,
            child: CustomButton(
              text: 'AGREE AND CONTINUE',
              onPressed: () => navigateToLoginScreen(context),
            ),
          ),
        ],
      )),
    );
  }
}

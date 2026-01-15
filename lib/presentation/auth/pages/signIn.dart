import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/assets/app_vectors.dart';
import 'package:music_app/common/widgets/appbar/app_bar.dart';
import 'package:music_app/common/widgets/button/basic_app_button.dart';
import 'package:music_app/presentation/auth/pages/signUp.dart';

class SigninPage extends StatelessWidget {
  const SigninPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: signupText(context),
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 200,
          width: 200,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            registerText(),
            const SizedBox(height: 50,),
            emailFeild(context),
            const SizedBox(height: 20,),
            passwordFeild(context),
            const SizedBox(height: 20,),
            BasicAppButton(
                onPressed: () {},
                title: 'Sign In'
            )
          ],
        ),
      ),
    );
  }

  Widget registerText() {
    return const Text(
      'Sign In',
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget emailFeild(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Enter your email'
      ).applyDefaults(
          Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget passwordFeild(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Enter your password'
      ).applyDefaults(
          Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget signupText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You have an account ?',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const SignupPage(),
                ),
              );
            },
            child: Text(
                'Sign Up'
            ),
          )
        ],
      ),
    );
  }
}

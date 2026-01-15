import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/assets/app_vectors.dart';
import 'package:music_app/common/helpers/is_dark.dart';
import 'package:music_app/common/widgets/appbar/app_bar.dart';
import 'package:music_app/common/widgets/button/basic_app_button.dart';
import 'package:music_app/core/configs/theme/app_colors.dart';
import 'package:music_app/presentation/auth/pages/signIn.dart';
import 'package:music_app/presentation/auth/pages/signUp.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  SvgPicture.asset(AppVectors.logo, width: 300),

                  Text(
                    'Enjoy Listening To Music',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: context.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    'Soundly is a proprietary Swedish audio\n'
                    'streaming and media services provider',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.6,
                      color: AppColors.grey,
                    ),
                  ),

                  const SizedBox(height: 40),

                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const SignupPage(),
                              ),
                            );
                          },
                          title: 'Register',
                        ),
                      ),

                      SizedBox(width: 20),

                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const SigninPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

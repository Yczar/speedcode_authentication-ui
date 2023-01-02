import 'package:authentication_ui/widgets/k_button.dart';
import 'package:authentication_ui/widgets/k_form_field.dart';
import 'package:flutter/material.dart';

import '../widgets/social_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({
    super.key,
  });

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),
              const Text(
                'Hello! Welcome back!👋',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              const Text(
                'Hello again, You\'ve been missed!',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFA8A2A2),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const KFormField(
                hintText: 'Enter your email',
                label: 'Email Address',
              ),
              const SizedBox(
                height: 10,
              ),
              const KFormField(
                hintText: 'Enter your password',
                label: 'Password',
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: IconButton(
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              Icons.check_box,
                              color: Color(0xFF00726D),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Remember me',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Color(0xFFFF0000),
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 44,
              ),
              const KButton(
                buttonText: 'Login',
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                children: const [
                  Expanded(
                    child: SocialButton(
                      iconPath: 'assets/svgs/facebook.svg',
                      title: 'Facebook',
                    ),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Expanded(
                    child: SocialButton(
                      iconPath: 'assets/svgs/google.svg',
                      title: 'Google',
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const SignInScreen(),
                      ),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'Don\'t have an account? ',
                      style: TextStyle(
                        color: Color(0xFFA2A6AC),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            color: Color(0xFF00726D),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

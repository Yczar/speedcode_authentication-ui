import 'package:authentication_ui/widgets/k_button.dart';
import 'package:authentication_ui/widgets/social_button.dart';
import 'package:flutter/material.dart';

import '../widgets/k_form_field.dart';
import 'sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 63,
              ),
              const Text(
                'Create Account',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Connect with your Friends Today!',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Color(0xFF959AA1),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              const KFormField(
                hintText: 'Enter your email',
                label: 'Email Address',
              ),
              const SizedBox(
                height: 10,
              ),
              const KFormField(
                hintText: 'Enter your mobile number',
                label: 'Mobile Number',
              ),
              const SizedBox(
                height: 10,
              ),
              const KFormField(
                hintText: 'Enter your password',
                label: 'Password',
              ),
              const SizedBox(
                height: 23,
              ),
              Row(
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
                    'I agree to the terms and conditions',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 19,
              ),
              const KButton(
                buttonText: 'Sign Up',
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Divider(),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Or Login with',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Divider(),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
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
              const SizedBox(
                height: 40,
              ),
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
                      text: 'Already have an account? ',
                      style: TextStyle(
                        color: Color(0xFFA2A6AC),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        TextSpan(
                          text: 'Log In',
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
            ],
          ),
        ),
      ),
    );
  }
}

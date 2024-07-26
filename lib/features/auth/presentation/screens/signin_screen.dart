import 'package:blog_app_clean/features/auth/presentation/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../../../../config/theme/pallet_color.dart';
import '../../../../core/widgets/custom_elevated_button_widget.dart';
import '../widgets/auth_text_field_widget.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});
  static Route route = MaterialPageRoute(
    builder: (context) {
      return const SigninScreen();
    },
  );

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const SizedBox(
                  width: double.infinity,
                ),
                Text(
                  "Sign In.",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: PalletColor.whiteColor,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthTextFieldWidget(
                  controller: emailController,
                  hint: "Email",
                  icon: Icons.email,
                ),
                const SizedBox(
                  height: 15,
                ),
                AuthTextFieldWidget(
                  controller: passwordController,
                  hint: "Password",
                  icon: Icons.password,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomElevatedButtonWidget(label: "Sign In"),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?  "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, SignupScreen.route);
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: PalletColor.gradiant3,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

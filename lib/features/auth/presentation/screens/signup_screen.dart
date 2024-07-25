import 'package:blog_app_clean/config/theme/pallet_color.dart';
import 'package:blog_app_clean/core/widgets/custom_elevated_button_widget.dart';
import 'package:blog_app_clean/features/auth/presentation/widgets/auth_text_field_widget.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  GlobalKey formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "Sign Up.",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: PalletColor.whiteColor,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthTextFieldWidget(
                  controller: nameController,
                  hint: "User name",
                  icon: Icons.person_rounded,
                ),
                const SizedBox(
                  height: 15,
                ),
                AuthTextFieldWidget(
                  controller: nameController,
                  hint: "Email",
                  icon: Icons.email,
                ),
                const SizedBox(
                  height: 15,
                ),
                AuthTextFieldWidget(
                  controller: nameController,
                  hint: "Password",
                  icon: Icons.password,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomElevatedButtonWidget(label: "Sign Up"),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?  "),
                    Text(
                      "Sign in",
                      style: TextStyle(
                        color: PalletColor.gradiant3,
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

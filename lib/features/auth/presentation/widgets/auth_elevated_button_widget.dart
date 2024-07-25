import 'package:flutter/material.dart';

import '../../../../config/theme/pallet_color.dart';

class AuthElevatedButtonWidget extends StatelessWidget {
  const AuthElevatedButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(12),
        gradient: const LinearGradient(
          colors: [
            PalletColor.gradiant1,
            PalletColor.gradiant2,
            PalletColor.gradiant3,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(double.infinity, 55),
          backgroundColor: PalletColor.transparentColor,
          shadowColor: PalletColor.transparentColor,
          elevation: 0,
        ),
        child: const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

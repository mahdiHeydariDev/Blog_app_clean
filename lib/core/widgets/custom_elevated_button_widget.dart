import 'package:blog_app_clean/config/theme/pallet_color.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  final String label;
  const CustomElevatedButtonWidget({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            colors: [
              PalletColor.gradiant1,
              PalletColor.gradiant2,
              PalletColor.gradiant3,
            ],
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: PalletColor.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient? gradient;
  final VoidCallback? onPressed;
  final String label;

  const CustomGradientButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.borderRadius,
    this.width = 325.0,
    this.height = 50.0,
    this.gradient = const LinearGradient(
        colors: [Color(0xFF327DE3), Color(0xFF1A4CD5)],
        stops: [0.0, 1.0],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(30.0);
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: borderRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.arrow_back, size: 20.0, color: Colors.white),
              Text(
                label,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Helvetica',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

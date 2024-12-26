import 'package:flutter/material.dart';

class CustButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const CustButton({super.key,
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8)
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: Text(text)
        ),
      ),
    );
  }
}
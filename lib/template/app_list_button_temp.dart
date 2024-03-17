import 'package:flutter/material.dart';

class AppListButtonTemplate extends StatelessWidget {
  const AppListButtonTemplate(
      {super.key, required this.buttonContent, required this.onPressed});
  final String buttonContent;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: const ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
              minimumSize: MaterialStatePropertyAll(Size.fromHeight(60))),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
                buttonContent),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

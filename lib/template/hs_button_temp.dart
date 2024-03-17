import 'package:flutter/material.dart';
import 'package:rgb/app_list.dart';

class HSButtonTemp extends StatelessWidget {
  const HSButtonTemp({required this.fNumber, super.key});
  final int fNumber;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        minimumSize: MaterialStatePropertyAll(
          Size(150, 150),
        ),
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => const AppList(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Icon(Icons.add),
            const SizedBox(
              height: 10,
            ),
            Text(style: const TextStyle(fontSize: 20), 'Floor $fNumber')
          ],
        ),
      ),
    );
  }
}

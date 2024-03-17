import 'package:flutter/material.dart';
import 'package:rgb/template/hs_button_temp.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 26,
              ),
              'Room Controller'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(44.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                        style: TextStyle(
                          fontSize: 22,
                        ),
                        'Please select the floor'),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HSButtonTemp(fNumber: 1),
                        HSButtonTemp(fNumber: 2)
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HSButtonTemp(fNumber: 3),
                        HSButtonTemp(fNumber: 4)
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HSButtonTemp(fNumber: 5),
                        HSButtonTemp(fNumber: 6),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

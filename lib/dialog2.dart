import 'package:flutter/material.dart';
import 'package:rgb/app_control.dart';

class Dialog2 extends StatefulWidget {
  const Dialog2({super.key, required this.isRGB});
  final bool isRGB;
  @override
  State<StatefulWidget> createState() {
    return _Dialog2State();
  }
}

class _Dialog2State extends State<Dialog2> {
  TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String statusKey = '';
    return Dialog(
      child: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Enter status key: '),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
              child: TextField(
                controller: controller,
                obscureText: true,
                onChanged: (value) => statusKey = controller.text,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) =>
                                AppControl(isRGB: widget.isRGB)),
                          ),
                        );
                      },
                      child: const Text('Verify')),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

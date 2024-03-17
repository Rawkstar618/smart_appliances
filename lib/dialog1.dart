import 'package:flutter/material.dart';
import 'package:rgb/dialog2.dart';

class Dialog1 extends StatefulWidget {
  const Dialog1({super.key, required this.isRGB});
  final bool isRGB;
  @override
  State<StatefulWidget> createState() {
    return _Dialog1State();
  }
}

class _Dialog1State extends State<Dialog1> {
  TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String controllerKey = '';
    return Dialog(
      child: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Enter controller key: '),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
              child: TextField(
                controller: controller,
                obscureText: true,
                onChanged: (value) => controllerKey = controller.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setState(() {
                        showDialog(
                          barrierDismissible: true,
                          useSafeArea: true,
                          context: context,
                          builder: (context) => Dialog2(isRGB: widget.isRGB),
                        );
                      });
                    },
                    child: const Text('Verify'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

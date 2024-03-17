import 'package:flutter/material.dart';
import 'package:rgb/change_mode.dart';
import 'package:rgb/color/light.dart';

class AppControl extends StatefulWidget {
  const AppControl({required this.isRGB, super.key});
  final bool isRGB;
  @override
  State<AppControl> createState() {
    return _AppControlState();
  }
}

class _AppControlState extends State<AppControl> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 26,
              ),
              'Appliance Control'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(),
                    const Text(
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w300),
                        'Turn On/Off'),
                    Switch(
                        activeTrackColor:
                            const Color.fromARGB(184, 59, 244, 65),
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor:
                            const Color.fromARGB(217, 147, 146, 146),
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        }),
                  ],
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 60),
                child: Divider(),
              ),
              const Text(
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  'Appliance Status'),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 30, right: 30),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Icon(
                          Icons.power_settings_new_sharp,
                          color: (isSwitched == true)
                              ? const Color.fromARGB(184, 59, 244, 65)
                              : const Color.fromARGB(255, 253, 43, 28),
                        ),
                        Text(
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w300),
                            (isSwitched == true) ? 'On' : 'Off'),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              if (widget.isRGB == true)
                ElevatedButton(
                  style: const ButtonStyle(
                    minimumSize: MaterialStatePropertyAll(Size(100, 50)),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChangeMode(),
                      ),
                    );
                  },
                  child: const Text(
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                      'Change Mode'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

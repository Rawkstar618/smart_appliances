import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:rgb/color_picker_screen.dart';
import 'package:rgb/template/seq_button_template.dart';

class ChangeMode extends StatefulWidget {
  const ChangeMode({super.key});
  @override
  State<ChangeMode> createState() {
    return _ChangeModeState();
  }
}

class _ChangeModeState extends State<ChangeMode> {
  bool colorIsSwitched = true;
  bool seqIsSwitched = false;
  List<String> labels = [
    'Seq 1',
    'Seq 2',
    'Seq 3',
    'Seq 4',
    'Seq 5',
    'Seq 6',
    'Seq 7',
  ];
  String activeSeq = 'Seq 1';
  void onTap(String label) {
    if (seqIsSwitched == true) {
      setState(() {
        activeSeq = label;
      });
    }
  }

  void onColorChanged(color) {
    setState(() {
      pickedColor = color;
    });
  }

  Color pickedColor = Colors.white;
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
              'Change Mode'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                foregroundDecoration: BoxDecoration(
                  color: colorIsSwitched == true
                      ? null
                      : const Color.fromARGB(125, 158, 158, 158),
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          const Text(
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w300),
                              'Change Color'),
                          Switch(
                            value: colorIsSwitched,
                            onChanged: (value) {
                              setState(
                                () {
                                  colorIsSwitched = value;
                                  if (colorIsSwitched == true) {
                                    seqIsSwitched = false;
                                  }
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: const MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)))),
                          backgroundColor:
                              MaterialStatePropertyAll(pickedColor),
                          minimumSize: const MaterialStatePropertyAll(
                            Size(150, 150),
                          ),
                        ),
                        onPressed: () {
                          if (colorIsSwitched == true) {
                            showDialog(
                              context: context,
                              builder: (context) => ColorPickerScreen(
                                  onColorChanged: onColorChanged,
                                  pickedColor: pickedColor),
                            );
                          }
                        },
                        child: const Text(''),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (colorIsSwitched == true) {
                            showDialog(
                              context: context,
                              builder: (context) => ColorPickerScreen(
                                  onColorChanged: onColorChanged,
                                  pickedColor: pickedColor),
                            );
                          }
                        },
                        child: const Text('Set Colour'),
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                foregroundDecoration: BoxDecoration(
                  color: seqIsSwitched == true
                      ? null
                      : const Color.fromARGB(125, 158, 158, 158),
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            const Text(
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w300),
                                'Change Sequence'),
                            Switch(
                              value: seqIsSwitched,
                              onChanged: (value) {
                                setState(
                                  () {
                                    seqIsSwitched = value;
                                    if (seqIsSwitched == true) {
                                      colorIsSwitched = false;
                                    }
                                  },
                                );
                              },
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SeqButtonTemplate(
                                label: labels[0],
                                activeSeq: activeSeq,
                                seqIsSwitched: seqIsSwitched,
                                onTap: () {
                                  onTap(labels[0]);
                                },
                              ),
                              SeqButtonTemplate(
                                label: labels[1],
                                activeSeq: activeSeq,
                                seqIsSwitched: seqIsSwitched,
                                onTap: () {
                                  onTap(labels[1]);
                                },
                              ),
                              SeqButtonTemplate(
                                label: labels[2],
                                activeSeq: activeSeq,
                                seqIsSwitched: seqIsSwitched,
                                onTap: () {
                                  onTap(labels[2]);
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SeqButtonTemplate(
                                label: labels[3],
                                activeSeq: activeSeq,
                                seqIsSwitched: seqIsSwitched,
                                onTap: () {
                                  onTap(labels[3]);
                                },
                              ),
                              SeqButtonTemplate(
                                label: labels[4],
                                activeSeq: activeSeq,
                                seqIsSwitched: seqIsSwitched,
                                onTap: () {
                                  onTap(labels[4]);
                                },
                              ),
                              SeqButtonTemplate(
                                label: labels[5],
                                activeSeq: activeSeq,
                                seqIsSwitched: seqIsSwitched,
                                onTap: () {
                                  onTap(labels[5]);
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SeqButtonTemplate(
                                label: labels[6],
                                activeSeq: activeSeq,
                                seqIsSwitched: seqIsSwitched,
                                onTap: () {
                                  onTap(labels[6]);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

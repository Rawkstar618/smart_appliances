import 'package:flutter/material.dart';
import 'package:rgb/color/dark.dart';
import 'package:rgb/color/light.dart';

class SeqButtonTemplate extends StatefulWidget {
  const SeqButtonTemplate(
      {required this.label,
      required this.activeSeq,
      required this.seqIsSwitched,
      required this.onTap,
      super.key});
  final void Function() onTap;
  final String label, activeSeq;
  final bool seqIsSwitched;
  @override
  State<SeqButtonTemplate> createState() {
    return _SeqButtonTemplateState();
  }
}

class _SeqButtonTemplateState extends State<SeqButtonTemplate> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: (widget.seqIsSwitched == false)
            ? const MaterialStatePropertyAll(Color.fromARGB(147, 222, 219, 219))
            : (widget.activeSeq == widget.label)
                ? const MaterialStatePropertyAll(
                    Color.fromARGB(226, 121, 244, 125))
                : ((ThemeMode.system == ThemeMode.light)
                    ? lightTheme.elevatedButtonTheme.style?.backgroundColor
                    : darkTheme.elevatedButtonTheme.style?.backgroundColor),
        minimumSize: const MaterialStatePropertyAll(
          Size(100, 100),
        ),
      ),
      onPressed: widget.onTap,
      child: Text(
        widget.label,
      ),
    );
  }
}

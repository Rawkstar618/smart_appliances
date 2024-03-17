import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:rgb/color_picker.dart';

class ColorPickerScreen extends StatefulWidget {
  const ColorPickerScreen(
      {required this.onColorChanged, required this.pickedColor, super.key});
  final void Function(Color) onColorChanged;
  final Color pickedColor;
  @override
  State<ColorPickerScreen> createState() {
    return _ColorPickerScreen();
  }
}

class _ColorPickerScreen extends State<ColorPickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColorPicker(
                labelTypes: const [],
                paletteType: PaletteType.hueWheel,
                pickerColor: widget.pickedColor,
                onColorChanged: widget.onColorChanged,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Done'))
            ],
          ),
        ),
      ),
    );
  }
}

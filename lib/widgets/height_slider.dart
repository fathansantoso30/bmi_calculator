import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSliderWidget extends StatefulWidget {
  const HeightSliderWidget({super.key});

  @override
  State<HeightSliderWidget> createState() => _HeightSliderWidgetState();
}

class _HeightSliderWidgetState extends State<HeightSliderWidget> {
  int height = 100;
  @override
  Widget build(BuildContext context) {
    return SfSlider(
        min: 0,
        max: 200,
        interval: 40,
        minorTicksPerInterval: 10,
        activeColor: const Color(0xFF2566cf),
        showTicks: true,
        showLabels: true,
        value: height,
        shouldAlwaysShowTooltip: true,
        onChanged: (value) {
          setState(() {
            height = value.round();
          });
        });
  }
}

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:weight_slider/weight_slider.dart';

class WeightSliderWidget extends StatefulWidget {
  const WeightSliderWidget({super.key});

  @override
  State<WeightSliderWidget> createState() => _WeightSliderWidgetState();
}

class _WeightSliderWidgetState extends State<WeightSliderWidget> {
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return WeightSlider(
        weight: weight,
        height: 78,
        minWeight: 30,
        maxWeight: 120,
        unit: '',
        onChange: (value) => setState(() => weight = value));
  }
}

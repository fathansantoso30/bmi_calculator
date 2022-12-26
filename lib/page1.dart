import 'package:bmi_calculator/widgets/age_slider.dart';
import 'package:bmi_calculator/widgets/height_slider.dart';
import 'package:bmi_calculator/widgets/weight_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            FontAwesomeIcons.calculator,
            color: Colors.black,
          ),
          titleSpacing: 0,
          title: Text(
            'BMI Calculator',
            style: GoogleFonts.raleway(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Gender',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 148,
                    height: 148,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFFD9D9D9)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          FontAwesomeIcons.person,
                          size: 74,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Male',
                          style: GoogleFonts.ptSans(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 148,
                    height: 148,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFFD9D9D9)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          FontAwesomeIcons.personDress,
                          size: 74,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Female',
                          style: GoogleFonts.ptSans(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Text(
                'Height (cm)',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey)),
                height: 148,
                child: const HeightSliderWidget(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Age',
                        style: GoogleFonts.raleway(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Container(
                        width: 148,
                        height: 78,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(244, 244, 244, 1.0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const AgeSliderWidget(),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Weight (kg)',
                        style: GoogleFonts.raleway(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Container(
                        width: 148,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [WeightSliderWidget()],
                        ),
                      )
                    ],
                  )
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2566cf),
                      fixedSize: const Size(double.maxFinite, 52),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: () {},
                  child: const Text('CALCULATE BMI'))
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Back',
          style: GoogleFonts.raleway(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Result',
              style: GoogleFonts.raleway(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 28),
            Center(
              child: Column(
                children: [
                  Text(
                    'Your BMI is',
                    style: GoogleFonts.raleway(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 28),
                  Container(
                    width: 86,
                    height: 86,
                    decoration: BoxDecoration(
                      color: const Color(0xFF2566cf),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '19.7',
                          style: GoogleFonts.raleway(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Wrap(direction: Axis.horizontal, children: [
                          Text(
                            'kg/m',
                            style: GoogleFonts.raleway(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '2',
                            style: GoogleFonts.raleway(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFeatures: [const FontFeature.superscripts()],
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Category: ',
                        style: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'Normal',
                        style: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  Container(
                    width: double.infinity,
                    height: 78,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(244, 244, 244, 1.0),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              FontAwesomeIcons.person,
                              size: 36,
                              color: Colors.black,
                            ),
                            Text('Male',
                                style: GoogleFonts.ptSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('22',
                                style: GoogleFonts.raleway(
                                    fontSize: 28, fontWeight: FontWeight.bold)),
                            Text('Age',
                                style: GoogleFonts.ptSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('164',
                                style: GoogleFonts.raleway(
                                    fontSize: 28, fontWeight: FontWeight.bold)),
                            Text('Height',
                                style: GoogleFonts.ptSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('52',
                                style: GoogleFonts.raleway(
                                    fontSize: 28, fontWeight: FontWeight.bold)),
                            Text('Weight',
                                style: GoogleFonts.ptSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),
                  Container(
                    width: double.infinity,
                    height: 196,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Text Result Placeholder',
                            style: GoogleFonts.ptSans(
                                fontSize: 16, fontWeight: FontWeight.normal)),
                        const Divider(
                          color: Colors.transparent,
                        ),
                        Text('Text Result Placeholder 2',
                            style: GoogleFonts.ptSans(
                                fontSize: 16, fontWeight: FontWeight.normal))
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('TRY AGAIN'),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            FontAwesomeIcons.arrowRotateRight,
                            size: 16,
                          )
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

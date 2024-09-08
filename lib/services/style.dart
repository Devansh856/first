import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

TextStyle fontStyle(FontWeight weight,double fontSize, Color color ){
 return GoogleFonts.getFont(
                    'Poppins',
                    fontWeight: weight,
                    fontSize: fontSize,
                    color: color,
                   
                  ); 
}

final hb15= SizedBox(height: 15,);
final wb15=SizedBox(width: 15,);
final hb20= SizedBox(height: 20,);
final wb20=SizedBox(width: 20,);
final hb10= SizedBox(height: 10,);
final wb10=SizedBox(width: 10,);
final wb5=SizedBox(width: 5,);
final wb8=SizedBox(width: 8,);
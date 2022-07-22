import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//NOTE: COLOR
Color kPurpleColor = const Color(0xff5843BE);
Color kOrangeColor = const Color(0xffFF9376);
Color kBlackColor = const Color(0xff000000);
Color kWhiteColor = const Color(0xffFFFFFF);
Color kGreyColor = const Color(0xff82868E);

//NOTE: TEXTSTYLE
TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);
TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: kPurpleColor,
);

//NOTE: FONTWEIGHT
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

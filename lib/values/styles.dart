part of values;



class DutyDoctorStyles{
  static TextStyle dutyDoctorsStyle({
    Color color = AppColor.duty_doctorGreen,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize = Sizes.TEXT_SIZE_14,
    FontWeight fontWeight = FontWeight.w500,
    TextDecoration textDecoration = TextDecoration.none
  }){
    return GoogleFonts.lato(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle:  fontStyle,
      decoration: textDecoration
    );
  }

  static TextStyle dutyDoctorsStyleWithUnderline({
    Color color = AppColor.duty_doctorGreen,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize = Sizes.TEXT_SIZE_14,
    FontWeight fontWeight = FontWeight.w500,
    TextDecoration textDecoration = TextDecoration.underline
  }){
    return GoogleFonts.lato(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle:  fontStyle,
      decoration: textDecoration
    );
  }
  static TextStyle dutyDoctorGreenheaderStyle({
    Color color = AppColor.duty_doctorGreen,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize = Sizes.HEIGHT_60,
    FontWeight fontWeight = FontWeight.w500,
  }){
    return TextStyle(
      fontFamily: StringConstants.dutyDoctorSF,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight
    );

  }

   static TextStyle dutyDoctorGreenheaderStyle1({
    Color color = AppColor.duty_doctorGreen,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize = Sizes.HEIGHT_60,
    FontWeight fontWeight = FontWeight.w500,
  }){
    return TextStyle(
      fontFamily: StringConstants.dutyDoctorAvenirLight,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight
    );

  }

  static TextStyle dutyDoctorBlackSubHeaderStyle({
    Color color = AppColor.primaryText,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize =Sizes.TEXT_SIZE_20,
    FontWeight fontWeight = FontWeight.w500,
    
  }){
    return TextStyle(
      fontFamily: StringConstants.dutyDictorCstd,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight
    );

  }

  static TextStyle dutyDoctorBlackHintTextStyle({
    Color color = AppColor.hintText,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize =15,
    FontWeight fontWeight = FontWeight.w500,
    
  }){
    return TextStyle(
      fontFamily: StringConstants.dutyDictorCstd,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight
    );

  }

   static TextStyle dutyDoctorButtonTextStyle({
    Color color = AppColor.duty_doctorWhite,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize =15,
    FontWeight fontWeight = FontWeight.w500,
    
  }){
    return TextStyle(
      fontFamily: StringConstants.dutyDoctorSF,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight
    );

  }

  static TextStyle dutyDoctorSmallTextStyle({
    Color color = AppColor.duty_doctorWhite,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize =15,
    FontWeight fontWeight = FontWeight.w500,
    
  }){
    return TextStyle(
      fontFamily: StringConstants.dutyDoctorAvenirLight,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight
    );

  }
   static TextStyle dutyDoctorsStyleWithRoboto({
    Color color = AppColor.duty_doctorGreen,
    FontStyle fontStyle = FontStyle.normal,
    double fontSize = Sizes.TEXT_SIZE_14,
    FontWeight fontWeight = FontWeight.w500
  }){
    return GoogleFonts.roboto(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle:  fontStyle
    );
  }
}

import 'package:duty_doctor/values/value.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';






class CustomTextFormField extends StatelessWidget {
  final TextStyle textStyle;
  final TextStyle hintTextStyle;
  final TextStyle labelStyle;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final String hintText;
  final String labelText;
  final bool obscured;
  final bool enabled;
  final bool hasPrefixIcon;
  final bool hasSufixIcon;
  final TextInputType textInputType;
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String> validator;
  final List<TextInputFormatter> inputFormatters;
  final InputBorder border;
  final InputBorder enabledBorder;
  final InputBorder focusedBorder;
  final double width;
  final double height;
  final EdgeInsetsGeometry contentPadding;
  final TextEditingController controller;
  final String value;


  CustomTextFormField({
    this.prefixIcon,
    this.textStyle,
    this.hintTextStyle,
    this.labelStyle,
    this.contentPadding,
    this.enabled = true,
    this.border = Borders.primaryInputBorder,
    this.focusedBorder = Borders.focusedBorder,
    this.enabledBorder = Borders.enabledBorder,
    this.hintText,
    this.labelText,
    this.hasPrefixIcon = false,
    this.obscured = false,
    this.textInputType,
    this.onChanged,
    this.validator,
    this.inputFormatters,
    this.width,
    this.height,
    this.controller,
    this.value,
    this.hasSufixIcon,
    this.suffixIcon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextFormField(
        controller: controller,
        style: textStyle,
        keyboardType: textInputType,
        onChanged: onChanged,
        validator: validator,
        initialValue: value,
        inputFormatters: inputFormatters,
         enabled: enabled,
        decoration: InputDecoration(
          contentPadding: contentPadding,
          labelText: labelText,
          labelStyle: labelStyle,
          border: border,
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          prefixIcon: hasPrefixIcon ? prefixIcon : null,
          // suffixIcon: hasSufixIcon? suffixIcon:null,
          hintText: hintText,
          hintStyle: hintTextStyle,
          
        ),
        obscureText: obscured,
      ),
    );
  }
}



class CustomTextFormFieldWithSuffix extends StatelessWidget {
  final TextStyle textStyle;
  final TextStyle hintTextStyle;
  final TextStyle labelStyle;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final String hintText;
  final String labelText;
  final bool obscured;
  final bool filled;
  final bool enabled;
  final bool hasPrefixIcon;
  final bool hasSufixIcon;
  final TextInputType textInputType;
  final ValueChanged<String> onChanged;
  final FormFieldValidator<String> validator;
  final List<TextInputFormatter> inputFormatters;
  final InputBorder border;
  final InputBorder enabledBorder;
  final InputBorder focusedBorder;
  final double width;
  final double height;
  final EdgeInsetsGeometry contentPadding;
  final TextEditingController controller;
  final String value;
  final Color fillColor;


  CustomTextFormFieldWithSuffix({
    this.prefixIcon,
    this.textStyle,
    this.hintTextStyle,
    this.labelStyle,
    this.contentPadding,
    this.enabled = true,
    this.border = Borders.primaryInputBorder,
    this.focusedBorder = Borders.focusedBorder,
    this.enabledBorder = Borders.enabledBorder,
    this.hintText,
    this.labelText,
    this.hasPrefixIcon = false,
    this.obscured = false,
    this.textInputType,
    this.onChanged,
    this.validator,
    this.inputFormatters,
    this.width,
    this.height,
    this.controller,
    this.value,
    this.hasSufixIcon,
    this.suffixIcon,
    this.fillColor,
    this.filled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextFormField(
        controller: controller,
        style: textStyle,
        keyboardType: textInputType,
        onChanged: onChanged,
        validator: validator,
        initialValue: value,
        inputFormatters: inputFormatters,
         enabled: enabled,
        decoration: InputDecoration(
          filled: filled,
          contentPadding: contentPadding,
          labelText: labelText,
          labelStyle: labelStyle,
          fillColor: fillColor,
          border: border,
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          prefixIcon: hasPrefixIcon ? prefixIcon : null,
          suffixIcon: hasSufixIcon? suffixIcon:null,
          hintText: hintText,
          hintStyle: hintTextStyle,
          
        ),
        obscureText: obscured,
      ),
    );
  }
}


import 'package:duty_doctor/values/value.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';



class DropDownField extends FormField<dynamic> {
  final String titleText;
  final String hintText;
  final bool required;
  final String errorText;
  final dynamic value;
  final List dataSource;
  final String textField;
  final String valueField;
  final Function onChanged;

  DropDownField(
      {FormFieldSetter<dynamic> onSaved,
      FormFieldValidator<dynamic> validator,
      bool autovalidate = false,
      this.titleText = 'Title',
      this.hintText = 'Select one option',
      this.required = false,
      this.errorText = 'Please select one option',
      this.value,
      this.dataSource,
      this.textField,
      this.valueField,
      this.onChanged})
      : super(
          onSaved: onSaved,
          validator: validator,
          autovalidate: autovalidate,
          builder: (FormFieldState<dynamic> state) {
          
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  InputDecorator(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      filled: false,
                      fillColor:Colors.transparent,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none
                      )
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<dynamic>(
                        underline: SizedBox(),
                        isExpanded: true,
                        hint:Text(
                           hintText,
                           style: DutyDoctorStyles.dutyDoctorBlackHintTextStyle()
                          // textColor: boonBodyBlack,
                          // fontFamily: ,
                          // fontSize: 15,
                        ),
                        value: value == '' ? null : value,
                        onChanged: (dynamic newValue) {
                          state.didChange(newValue);
                          onChanged(newValue);
                        },
                        items: dataSource.map((item) {
                          
                          return DropdownMenuItem<dynamic>(
                            value: item[valueField.toString()],
                            child: Text(item[textField.toString()].length > 100 ? item[textField.toString()].substring(0, 25) : item[textField.toString()], overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize:Sizes.TEXT_SIZE_14,
                            ),
                            ),
                            // child: Text(item[textField]),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: state.hasError ? 5.0 : 0.0),
                  Text(
                    state.hasError ? state.errorText : '',
                    style: TextStyle(color: Colors.redAccent.shade700, fontSize: state.hasError ? 12.0 : 0.0),
                  ),
                ],
              ),
            );
          },
        );
}

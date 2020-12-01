part of values;




class Borders {
  static const BorderSide defaultPrimaryBorder =
      BorderSide(width: Sizes.WIDTH_0, style: BorderStyle.none);

  static const UnderlineInputBorder primaryInputBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColor.duty_doctorWhite,
      width: Sizes.WIDTH_1,
      style: BorderStyle.solid,
    ),
  );

  static const UnderlineInputBorder enabledBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColor.duty_doctorWhite,
      width: Sizes.WIDTH_1,
      style: BorderStyle.solid,
    ),
  );

  static const UnderlineInputBorder focusedBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColor.duty_doctorBlack,
      width: Sizes.WIDTH_2,
      style: BorderStyle.solid,
    ),
  );

  static const UnderlineInputBorder disabledBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColor.duty_doctorGrey,
      width: Sizes.WIDTH_1,
      style: BorderStyle.solid,
    ),
  );

  static const OutlineInputBorder outlineEnabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(Sizes.SIZE_6)),
    borderSide: BorderSide(
      color: AppColor.duty_doctorLightGreen,
      width: Sizes.WIDTH_1,
      style: BorderStyle.solid,
    ),
    
  );

  static const OutlineInputBorder outlineFocusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(Sizes.SIZE_6)),
    borderSide: BorderSide(
      color: AppColor.duty_doctorGreen,
      width: Sizes.WIDTH_1,
      style: BorderStyle.solid,
    ),
    
  );

  static const OutlineInputBorder outlineBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(Sizes.SIZE_6)),
    borderSide: BorderSide(
      color: AppColor.duty_doctorGrey,
      width: Sizes.WIDTH_1,
      style: BorderStyle.solid,
    ),
  );

  static const UnderlineInputBorder noBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      style: BorderStyle.none,
    ),
  );

  static Border simpleBorder = Border.all(
    color:AppColor.duty_doctorGrey,
    width: Sizes.WIDTH_1,
    style: BorderStyle.solid,
  );
}

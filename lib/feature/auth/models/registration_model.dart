// To parse this JSON data, do
//
//     final registrationModel = registrationModelFromJson(jsonString);

import 'dart:convert';

RegistrationModel registrationModelFromJson(String str) => RegistrationModel.fromJson(json.decode(str));

String registrationModelToJson(RegistrationModel data) => json.encode(data.toJson());

class RegistrationModel {
    RegistrationModel({
        this.data,
        this.meta,
    });

    Data data;
    Meta meta;

    factory RegistrationModel.fromJson(Map<String, dynamic> json) => RegistrationModel(
        data: Data.fromJson(json["data"]),
        meta: Meta.fromJson(json["meta"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "meta": meta.toJson(),
    };
}

class Data {
    Data({
        this.id,
        this.email,
        this.telephone,
        this.title,
        this.firstName,
        this.middleName,
        this.lastName,
        this.gender,
        this.lastLoggedinAt,
        this.emailVerifiedAt,
        this.locationAddressHouseNumber,
        this.locationAddressStreetName,
        this.locationAddressSuburb,
        this.locationAddressCity,
        this.locationAddressState,
        this.gpsLocationName,
        this.gpsLong,
        this.gpsLat,
        this.gpsCity,
        this.gpsState,
        this.bankName,
        this.bankAccountName,
        this.bankAccountNumber,
        this.paystackBankCode,
        this.paystackBankAccountVerificationDetails,
        this.paystackRecipientCode,
        this.paystackRecipientDetails,
        this.isBankAccountVerified,
        this.bankAccountVerifiedAt,
        this.isDisabled,
        this.disableReason,
        this.disabledAt,
        this.disablingUserId,
        this.profileImage,
        this.userableId,
        this.userableType,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.fullName,
    });

    int id;
    String email;
    String telephone;
    dynamic title;
    String firstName;
    dynamic middleName;
    String lastName;
    dynamic gender;
    dynamic lastLoggedinAt;
    dynamic emailVerifiedAt;
    dynamic locationAddressHouseNumber;
    dynamic locationAddressStreetName;
    dynamic locationAddressSuburb;
    dynamic locationAddressCity;
    dynamic locationAddressState;
    dynamic gpsLocationName;
    dynamic gpsLong;
    dynamic gpsLat;
    dynamic gpsCity;
    dynamic gpsState;
    dynamic bankName;
    dynamic bankAccountName;
    dynamic bankAccountNumber;
    dynamic paystackBankCode;
    dynamic paystackBankAccountVerificationDetails;
    dynamic paystackRecipientCode;
    dynamic paystackRecipientDetails;
    String isBankAccountVerified;
    dynamic bankAccountVerifiedAt;
    String isDisabled;
    dynamic disableReason;
    dynamic disabledAt;
    dynamic disablingUserId;
    dynamic profileImage;
    String userableId;
    String userableType;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    String fullName;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        email: json["email"],
        telephone: json["telephone"],
        title: json["title"],
        firstName: json["first_name"],
        middleName: json["middle_name"],
        lastName: json["last_name"],
        gender: json["gender"],
        lastLoggedinAt: json["last_loggedin_at"],
        emailVerifiedAt: json["email_verified_at"],
        locationAddressHouseNumber: json["location_address_house_number"],
        locationAddressStreetName: json["location_address_street_name"],
        locationAddressSuburb: json["location_address_suburb"],
        locationAddressCity: json["location_address_city"],
        locationAddressState: json["location_address_state"],
        gpsLocationName: json["gps_location_name"],
        gpsLong: json["gps_long"],
        gpsLat: json["gps_lat"],
        gpsCity: json["gps_city"],
        gpsState: json["gps_state"],
        bankName: json["bank_name"],
        bankAccountName: json["bank_account_name"],
        bankAccountNumber: json["bank_account_number"],
        paystackBankCode: json["paystack_bank_code"],
        paystackBankAccountVerificationDetails: json["paystack_bank_account_verification_details"],
        paystackRecipientCode: json["paystack_recipient_code"],
        paystackRecipientDetails: json["paystack_recipient_details"],
        isBankAccountVerified: json["is_bank_account_verified"],
        bankAccountVerifiedAt: json["bank_account_verified_at"],
        isDisabled: json["is_disabled"],
        disableReason: json["disable_reason"],
        disabledAt: json["disabled_at"],
        disablingUserId: json["disabling_user_id"],
        profileImage: json["profile_image"],
        userableId: json["userable_id"],
        userableType: json["userable_type"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        fullName: json["full_name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "telephone": telephone,
        "title": title,
        "first_name": firstName,
        "middle_name": middleName,
        "last_name": lastName,
        "gender": gender,
        "last_loggedin_at": lastLoggedinAt,
        "email_verified_at": emailVerifiedAt,
        "location_address_house_number": locationAddressHouseNumber,
        "location_address_street_name": locationAddressStreetName,
        "location_address_suburb": locationAddressSuburb,
        "location_address_city": locationAddressCity,
        "location_address_state": locationAddressState,
        "gps_location_name": gpsLocationName,
        "gps_long": gpsLong,
        "gps_lat": gpsLat,
        "gps_city": gpsCity,
        "gps_state": gpsState,
        "bank_name": bankName,
        "bank_account_name": bankAccountName,
        "bank_account_number": bankAccountNumber,
        "paystack_bank_code": paystackBankCode,
        "paystack_bank_account_verification_details": paystackBankAccountVerificationDetails,
        "paystack_recipient_code": paystackRecipientCode,
        "paystack_recipient_details": paystackRecipientDetails,
        "is_bank_account_verified": isBankAccountVerified,
        "bank_account_verified_at": bankAccountVerifiedAt,
        "is_disabled": isDisabled,
        "disable_reason": disableReason,
        "disabled_at": disabledAt,
        "disabling_user_id": disablingUserId,
        "profile_image": profileImage,
        "userable_id": userableId,
        "userable_type": userableType,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "full_name": fullName,
    };
}

class Meta {
    Meta({
        this.token,
    });

    String token;

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
    };
}

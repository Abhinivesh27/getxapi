import 'dart:convert';

class SubCategoryModel {
    final int? code;
    final bool? status;
    final String? message;
    final List<Datum>? data;

    SubCategoryModel({
        this.code,
        this.status,
        this.message,
        this.data,
    });

    SubCategoryModel copyWith({
        int? code,
        bool? status,
        String? message,
        List<Datum>? data,
    }) => 
        SubCategoryModel(
            code: code ?? this.code,
            status: status ?? this.status,
            message: message ?? this.message,
            data: data ?? this.data,
        );

    factory SubCategoryModel.fromRawJson(String str) => SubCategoryModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SubCategoryModel.fromJson(Map<String, dynamic> json) => SubCategoryModel(
        code: json["Code"],
        status: json["Status"],
        message: json["Message"],
        data: json["Data"] == null ? [] : List<Datum>.from(json["Data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "Code": code,
        "Status": status,
        "Message": message,
        "Data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    final int? orgId;
    final String? code;
    final String? name;
    final dynamic categoryName;
    final String? chineseDescription;
    final String? categoryCode;
    final int? displayOrder;
    final bool? isPos;
    final bool? isB2B;
    final bool? isB2C;
    final bool? isErp;
    final bool? isActive;
    final String? createdBy;
    final DateTime? createdOn;
    final String? changedBy;
    final DateTime? changedOn;
    final dynamic createdOnString;
    final dynamic changedOnString;
    final dynamic iconImageFileName;
    final dynamic iconImageFilePath;
    final dynamic iconImgBase64String;
    final dynamic iconImage;
    final dynamic subCategoryImageFileName;
    final dynamic subCategoryImageFilePath;
    final dynamic subCategoryImgBase64String;
    final dynamic subCategoryImage;

    Datum({
        this.orgId,
        this.code,
        this.name,
        this.categoryName,
        this.chineseDescription,
        this.categoryCode,
        this.displayOrder,
        this.isPos,
        this.isB2B,
        this.isB2C,
        this.isErp,
        this.isActive,
        this.createdBy,
        this.createdOn,
        this.changedBy,
        this.changedOn,
        this.createdOnString,
        this.changedOnString,
        this.iconImageFileName,
        this.iconImageFilePath,
        this.iconImgBase64String,
        this.iconImage,
        this.subCategoryImageFileName,
        this.subCategoryImageFilePath,
        this.subCategoryImgBase64String,
        this.subCategoryImage,
    });

    Datum copyWith({
        int? orgId,
        String? code,
        String? name,
        dynamic categoryName,
        String? chineseDescription,
        String? categoryCode,
        int? displayOrder,
        bool? isPos,
        bool? isB2B,
        bool? isB2C,
        bool? isErp,
        bool? isActive,
        String? createdBy,
        DateTime? createdOn,
        String? changedBy,
        DateTime? changedOn,
        dynamic createdOnString,
        dynamic changedOnString,
        dynamic iconImageFileName,
        dynamic iconImageFilePath,
        dynamic iconImgBase64String,
        dynamic iconImage,
        dynamic subCategoryImageFileName,
        dynamic subCategoryImageFilePath,
        dynamic subCategoryImgBase64String,
        dynamic subCategoryImage,
    }) => 
        Datum(
            orgId: orgId ?? this.orgId,
            code: code ?? this.code,
            name: name ?? this.name,
            categoryName: categoryName ?? this.categoryName,
            chineseDescription: chineseDescription ?? this.chineseDescription,
            categoryCode: categoryCode ?? this.categoryCode,
            displayOrder: displayOrder ?? this.displayOrder,
            isPos: isPos ?? this.isPos,
            isB2B: isB2B ?? this.isB2B,
            isB2C: isB2C ?? this.isB2C,
            isErp: isErp ?? this.isErp,
            isActive: isActive ?? this.isActive,
            createdBy: createdBy ?? this.createdBy,
            createdOn: createdOn ?? this.createdOn,
            changedBy: changedBy ?? this.changedBy,
            changedOn: changedOn ?? this.changedOn,
            createdOnString: createdOnString ?? this.createdOnString,
            changedOnString: changedOnString ?? this.changedOnString,
            iconImageFileName: iconImageFileName ?? this.iconImageFileName,
            iconImageFilePath: iconImageFilePath ?? this.iconImageFilePath,
            iconImgBase64String: iconImgBase64String ?? this.iconImgBase64String,
            iconImage: iconImage ?? this.iconImage,
            subCategoryImageFileName: subCategoryImageFileName ?? this.subCategoryImageFileName,
            subCategoryImageFilePath: subCategoryImageFilePath ?? this.subCategoryImageFilePath,
            subCategoryImgBase64String: subCategoryImgBase64String ?? this.subCategoryImgBase64String,
            subCategoryImage: subCategoryImage ?? this.subCategoryImage,
        );

    factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        orgId: json["OrgId"],
        code: json["Code"],
        name: json["Name"],
        categoryName: json["CategoryName"],
        chineseDescription: json["ChineseDescription"],
        categoryCode: json["CategoryCode"],
        displayOrder: json["DisplayOrder"],
        isPos: json["IsPOS"],
        isB2B: json["IsB2B"],
        isB2C: json["IsB2C"],
        isErp: json["IsERP"],
        isActive: json["IsActive"],
        createdBy: json["CreatedBy"],
        createdOn: json["CreatedOn"] == null ? null : DateTime.parse(json["CreatedOn"]),
        changedBy: json["ChangedBy"],
        changedOn: json["ChangedOn"] == null ? null : DateTime.parse(json["ChangedOn"]),
        createdOnString: json["CreatedOnString"],
        changedOnString: json["ChangedOnString"],
        iconImageFileName: json["IconImageFileName"],
        iconImageFilePath: json["IconImageFilePath"],
        iconImgBase64String: json["IconImg_Base64String"],
        iconImage: json["IconImage"],
        subCategoryImageFileName: json["SubCategoryImageFileName"],
        subCategoryImageFilePath: json["SubCategoryImageFilePath"],
        subCategoryImgBase64String: json["SubCategoryImg_Base64String"],
        subCategoryImage: json["SubCategoryImage"],
    );

    Map<String, dynamic> toJson() => {
        "OrgId": orgId,
        "Code": code,
        "Name": name,
        "CategoryName": categoryName,
        "ChineseDescription": chineseDescription,
        "CategoryCode": categoryCode,
        "DisplayOrder": displayOrder,
        "IsPOS": isPos,
        "IsB2B": isB2B,
        "IsB2C": isB2C,
        "IsERP": isErp,
        "IsActive": isActive,
        "CreatedBy": createdBy,
        "CreatedOn": createdOn?.toIso8601String(),
        "ChangedBy": changedBy,
        "ChangedOn": changedOn?.toIso8601String(),
        "CreatedOnString": createdOnString,
        "ChangedOnString": changedOnString,
        "IconImageFileName": iconImageFileName,
        "IconImageFilePath": iconImageFilePath,
        "IconImg_Base64String": iconImgBase64String,
        "IconImage": iconImage,
        "SubCategoryImageFileName": subCategoryImageFileName,
        "SubCategoryImageFilePath": subCategoryImageFilePath,
        "SubCategoryImg_Base64String": subCategoryImgBase64String,
        "SubCategoryImage": subCategoryImage,
    };
}

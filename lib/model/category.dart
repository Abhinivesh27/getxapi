import 'dart:convert';

class CategoryModel {
    final int? code;
    final bool? status;
    final String? message;
    final List<Datum>? data;

    CategoryModel({
        this.code,
        this.status,
        this.message,
        this.data,
    });

    CategoryModel copyWith({
        int? code,
        bool? status,
        String? message,
        List<Datum>? data,
    }) => 
        CategoryModel(
            code: code ?? this.code,
            status: status ?? this.status,
            message: message ?? this.message,
            data: data ?? this.data,
        );

    factory CategoryModel.fromRawJson(String str) => CategoryModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
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
    final String? chineseDescription;
    final int? displayOrder;
    final bool? isPos;
    final bool? isB2B;
    final bool? isB2C;
    final bool? isErp;
    final bool? isActive;
    final EdBy? createdBy;
    final DateTime? createdOn;
    final EdBy? changedBy;
    final DateTime? changedOn;
    final String? createdOnString;
    final String? changedOnString;
    final String? iconImageFileName;
    final String? iconImageFilePath;
    final dynamic iconImgBase64String;
    final dynamic iconImage;
    final String? categoryImageFileName;
    final String? categoryImageFilePath;
    final dynamic categoryImgBase64String;
    final dynamic categoryImage;

    Datum({
        this.orgId,
        this.code,
        this.name,
        this.chineseDescription,
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
        this.categoryImageFileName,
        this.categoryImageFilePath,
        this.categoryImgBase64String,
        this.categoryImage,
    });

    Datum copyWith({
        int? orgId,
        String? code,
        String? name,
        String? chineseDescription,
        int? displayOrder,
        bool? isPos,
        bool? isB2B,
        bool? isB2C,
        bool? isErp,
        bool? isActive,
        EdBy? createdBy,
        DateTime? createdOn,
        EdBy? changedBy,
        DateTime? changedOn,
        String? createdOnString,
        String? changedOnString,
        String? iconImageFileName,
        String? iconImageFilePath,
        dynamic iconImgBase64String,
        dynamic iconImage,
        String? categoryImageFileName,
        String? categoryImageFilePath,
        dynamic categoryImgBase64String,
        dynamic categoryImage,
    }) => 
        Datum(
            orgId: orgId ?? this.orgId,
            code: code ?? this.code,
            name: name ?? this.name,
            chineseDescription: chineseDescription ?? this.chineseDescription,
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
            categoryImageFileName: categoryImageFileName ?? this.categoryImageFileName,
            categoryImageFilePath: categoryImageFilePath ?? this.categoryImageFilePath,
            categoryImgBase64String: categoryImgBase64String ?? this.categoryImgBase64String,
            categoryImage: categoryImage ?? this.categoryImage,
        );

    factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        orgId: json["OrgId"],
        code: json["Code"],
        name: json["Name"],
        chineseDescription: json["ChineseDescription"],
        displayOrder: json["DisplayOrder"],
        isPos: json["IsPOS"],
        isB2B: json["IsB2B"],
        isB2C: json["IsB2C"],
        isErp: json["IsERP"],
        isActive: json["IsActive"],
        createdBy: edByValues.map[json["CreatedBy"]]!,
        createdOn: json["CreatedOn"] == null ? null : DateTime.parse(json["CreatedOn"]),
        changedBy: edByValues.map[json["ChangedBy"]]!,
        changedOn: json["ChangedOn"] == null ? null : DateTime.parse(json["ChangedOn"]),
        createdOnString: json["CreatedOnString"],
        changedOnString: json["ChangedOnString"],
        iconImageFileName: json["IconImageFileName"],
        iconImageFilePath: json["IconImageFilePath"],
        iconImgBase64String: json["IconImg_Base64String"],
        iconImage: json["IconImage"],
        categoryImageFileName: json["CategoryImageFileName"],
        categoryImageFilePath: json["CategoryImageFilePath"],
        categoryImgBase64String: json["CategoryImg_Base64String"],
        categoryImage: json["CategoryImage"],
    );

    Map<String, dynamic> toJson() => {
        "OrgId": orgId,
        "Code": code,
        "Name": name,
        "ChineseDescription": chineseDescription,
        "DisplayOrder": displayOrder,
        "IsPOS": isPos,
        "IsB2B": isB2B,
        "IsB2C": isB2C,
        "IsERP": isErp,
        "IsActive": isActive,
        "CreatedBy": edByValues.reverse[createdBy],
        "CreatedOn": createdOn?.toIso8601String(),
        "ChangedBy": edByValues.reverse[changedBy],
        "ChangedOn": changedOn?.toIso8601String(),
        "CreatedOnString": createdOnString,
        "ChangedOnString": changedOnString,
        "IconImageFileName": iconImageFileName,
        "IconImageFilePath": iconImageFilePath,
        "IconImg_Base64String": iconImgBase64String,
        "IconImage": iconImage,
        "CategoryImageFileName": categoryImageFileName,
        "CategoryImageFilePath": categoryImageFilePath,
        "CategoryImg_Base64String": categoryImgBase64String,
        "CategoryImage": categoryImage,
    };
}

enum EdBy {
    ADMIN
}

final edByValues = EnumValues({
    "admin": EdBy.ADMIN
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}

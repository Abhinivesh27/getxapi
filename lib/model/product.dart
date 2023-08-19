import 'dart:convert';

class ProductModel {
    final dynamic? code;
    final bool? status;
    final String? message;
    final dynamic? pageNumber;
    final dynamic? pageSize;
    final dynamic? totalNumberOfPages;
    final dynamic? totalNumberOfRecords;
    final List<Result>? result;
    final String? firstPageUrl;
    final dynamic nextPageUrl;
    final dynamic previousPageUrl;
    final String? lastPageUrl;

    ProductModel({
        this.code,
        this.status,
        this.message,
        this.pageNumber,
        this.pageSize,
        this.totalNumberOfPages,
        this.totalNumberOfRecords,
        this.result,
        this.firstPageUrl,
        this.nextPageUrl,
        this.previousPageUrl,
        this.lastPageUrl,
    });

    ProductModel copyWith({
        dynamic? code,
        bool? status,
        String? message,
        dynamic? pageNumber,
        dynamic? pageSize,
        dynamic? totalNumberOfPages,
        dynamic? totalNumberOfRecords,
        List<Result>? result,
        String? firstPageUrl,
        dynamic nextPageUrl,
        dynamic previousPageUrl,
        String? lastPageUrl,
    }) => 
        ProductModel(
            code: code ?? this.code,
            status: status ?? this.status,
            message: message ?? this.message,
            pageNumber: pageNumber ?? this.pageNumber,
            pageSize: pageSize ?? this.pageSize,
            totalNumberOfPages: totalNumberOfPages ?? this.totalNumberOfPages,
            totalNumberOfRecords: totalNumberOfRecords ?? this.totalNumberOfRecords,
            result: result ?? this.result,
            firstPageUrl: firstPageUrl ?? this.firstPageUrl,
            nextPageUrl: nextPageUrl ?? this.nextPageUrl,
            previousPageUrl: previousPageUrl ?? this.previousPageUrl,
            lastPageUrl: lastPageUrl ?? this.lastPageUrl,
        );

    factory ProductModel.fromRawJson(String str) => ProductModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        code: json["Code"],
        status: json["Status"],
        message: json["Message"],
        pageNumber: json["PageNumber"],
        pageSize: json["PageSize"],
        totalNumberOfPages: json["TotalNumberOfPages"],
        totalNumberOfRecords: json["TotalNumberOfRecords"],
        result: json["Result"] == null ? [] : List<Result>.from(json["Result"]!.map((x) => Result.fromJson(x))),
        firstPageUrl: json["FirstPageUrl"],
        nextPageUrl: json["NextPageUrl"],
        previousPageUrl: json["PreviousPageUrl"],
        lastPageUrl: json["LastPageUrl"],
    );

    Map<String, dynamic> toJson() => {
        "Code": code,
        "Status": status,
        "Message": message,
        "PageNumber": pageNumber,
        "PageSize": pageSize,
        "TotalNumberOfPages": totalNumberOfPages,
        "TotalNumberOfRecords": totalNumberOfRecords,
        "Result": result == null ? [] : List<dynamic>.from(result!.map((x) => x.toJson())),
        "FirstPageUrl": firstPageUrl,
        "NextPageUrl": nextPageUrl,
        "PreviousPageUrl": previousPageUrl,
        "LastPageUrl": lastPageUrl,
    };
}

class Result {
    final String? productName;
    final dynamic? orgId;
    final dynamic branchCode;
    final String? code;
    final String? name;
    final String? productCode;
    final String? specification;
    final String? category;
    final String? subCategory;
    final String? categoryName;
    final String? subCategoryName;
    final String? uom;
    final dynamic uomName;
    final dynamic? pcsPerCarton;
    final String? productType;
    final String? brand;
    final dynamic? weight;
    final dynamic? unitCost;
    final dynamic? averageCost;
    final dynamic? pcsPrice;
    final dynamic? cartonPrice;
    final String? barCode;
    final dynamic? displayOrder;
    final bool? isActive;
    final bool? isStock;
    final String? createdBy;
    final DateTime? createdOn;
    final String? changedBy;
    final DateTime? changedOn;
    final dynamic? sellingCost;
    final dynamic? sellingBoxCost;
    final dynamic stockQty;
    final dynamic stockBoxQty;
    final dynamic stockPcsQty;
    final String? salesAccount;
    final String? inventoryAccount;
    final String? cogAccount;
    final String? productImageString;
    final dynamic productImage;
    final String? createdOnString;
    final String? changedOnString;
    final String? supplierCode;
    final String? supplierName;
    final dynamic? taxPerc;
    final dynamic productBarcode;
    final dynamic boxCount;
    final dynamic productImgBase64String;
    final String? productImageFileName;
    final String? productImagePath;
    final dynamic? minSellingCost;
    final dynamic? minSellingBoxCost;
    final dynamic tag;
    final bool? isWeight;
    final dynamic uomPriceDetail;
    final dynamic stockWQty;
    final dynamic unitMarginPerc;
    final dynamic boxMarginPerc;
    final dynamic haveTransaction;
    final List<EcommerceDetail>? ecommerceDetail;
    final dynamic ecommerceGalleryImages;
    final dynamic haveBatch;
    final dynamic haveSerialNo;
    final dynamic haveExpiryDate;
    final dynamic haveMfDate;
    final dynamic posMinSellingPrice;
    final dynamic posSellingPrice;
    final dynamic publishToPos;

    Result({
        this.productName,
        this.orgId,
        this.branchCode,
        this.code,
        this.name,
        this.productCode,
        this.specification,
        this.category,
        this.subCategory,
        this.categoryName,
        this.subCategoryName,
        this.uom,
        this.uomName,
        this.pcsPerCarton,
        this.productType,
        this.brand,
        this.weight,
        this.unitCost,
        this.averageCost,
        this.pcsPrice,
        this.cartonPrice,
        this.barCode,
        this.displayOrder,
        this.isActive,
        this.isStock,
        this.createdBy,
        this.createdOn,
        this.changedBy,
        this.changedOn,
        this.sellingCost,
        this.sellingBoxCost,
        this.stockQty,
        this.stockBoxQty,
        this.stockPcsQty,
        this.salesAccount,
        this.inventoryAccount,
        this.cogAccount,
        this.productImageString,
        this.productImage,
        this.createdOnString,
        this.changedOnString,
        this.supplierCode,
        this.supplierName,
        this.taxPerc,
        this.productBarcode,
        this.boxCount,
        this.productImgBase64String,
        this.productImageFileName,
        this.productImagePath,
        this.minSellingCost,
        this.minSellingBoxCost,
        this.tag,
        this.isWeight,
        this.uomPriceDetail,
        this.stockWQty,
        this.unitMarginPerc,
        this.boxMarginPerc,
        this.haveTransaction,
        this.ecommerceDetail,
        this.ecommerceGalleryImages,
        this.haveBatch,
        this.haveSerialNo,
        this.haveExpiryDate,
        this.haveMfDate,
        this.posMinSellingPrice,
        this.posSellingPrice,
        this.publishToPos,
    });

    Result copyWith({
        String? productName,
        dynamic? orgId,
        dynamic branchCode,
        String? code,
        String? name,
        String? productCode,
        String? specification,
        String? category,
        String? subCategory,
        String? categoryName,
        String? subCategoryName,
        String? uom,
        dynamic uomName,
        dynamic? pcsPerCarton,
        String? productType,
        String? brand,
        dynamic? weight,
        dynamic? unitCost,
        dynamic? averageCost,
        dynamic? pcsPrice,
        dynamic? cartonPrice,
        String? barCode,
        dynamic? displayOrder,
        bool? isActive,
        bool? isStock,
        String? createdBy,
        DateTime? createdOn,
        String? changedBy,
        DateTime? changedOn,
        dynamic? sellingCost,
        dynamic? sellingBoxCost,
        dynamic stockQty,
        dynamic stockBoxQty,
        dynamic stockPcsQty,
        String? salesAccount,
        String? inventoryAccount,
        String? cogAccount,
        String? productImageString,
        dynamic productImage,
        String? createdOnString,
        String? changedOnString,
        String? supplierCode,
        String? supplierName,
        dynamic? taxPerc,
        dynamic productBarcode,
        dynamic boxCount,
        dynamic productImgBase64String,
        String? productImageFileName,
        String? productImagePath,
        dynamic? minSellingCost,
        dynamic? minSellingBoxCost,
        dynamic tag,
        bool? isWeight,
        dynamic uomPriceDetail,
        dynamic stockWQty,
        dynamic unitMarginPerc,
        dynamic boxMarginPerc,
        dynamic haveTransaction,
        List<EcommerceDetail>? ecommerceDetail,
        dynamic ecommerceGalleryImages,
        dynamic haveBatch,
        dynamic haveSerialNo,
        dynamic haveExpiryDate,
        dynamic haveMfDate,
        dynamic posMinSellingPrice,
        dynamic posSellingPrice,
        dynamic publishToPos,
    }) => 
        Result(
            productName: productName ?? this.productName,
            orgId: orgId ?? this.orgId,
            branchCode: branchCode ?? this.branchCode,
            code: code ?? this.code,
            name: name ?? this.name,
            productCode: productCode ?? this.productCode,
            specification: specification ?? this.specification,
            category: category ?? this.category,
            subCategory: subCategory ?? this.subCategory,
            categoryName: categoryName ?? this.categoryName,
            subCategoryName: subCategoryName ?? this.subCategoryName,
            uom: uom ?? this.uom,
            uomName: uomName ?? this.uomName,
            pcsPerCarton: pcsPerCarton ?? this.pcsPerCarton,
            productType: productType ?? this.productType,
            brand: brand ?? this.brand,
            weight: weight ?? this.weight,
            unitCost: unitCost ?? this.unitCost,
            averageCost: averageCost ?? this.averageCost,
            pcsPrice: pcsPrice ?? this.pcsPrice,
            cartonPrice: cartonPrice ?? this.cartonPrice,
            barCode: barCode ?? this.barCode,
            displayOrder: displayOrder ?? this.displayOrder,
            isActive: isActive ?? this.isActive,
            isStock: isStock ?? this.isStock,
            createdBy: createdBy ?? this.createdBy,
            createdOn: createdOn ?? this.createdOn,
            changedBy: changedBy ?? this.changedBy,
            changedOn: changedOn ?? this.changedOn,
            sellingCost: sellingCost ?? this.sellingCost,
            sellingBoxCost: sellingBoxCost ?? this.sellingBoxCost,
            stockQty: stockQty ?? this.stockQty,
            stockBoxQty: stockBoxQty ?? this.stockBoxQty,
            stockPcsQty: stockPcsQty ?? this.stockPcsQty,
            salesAccount: salesAccount ?? this.salesAccount,
            inventoryAccount: inventoryAccount ?? this.inventoryAccount,
            cogAccount: cogAccount ?? this.cogAccount,
            productImageString: productImageString ?? this.productImageString,
            productImage: productImage ?? this.productImage,
            createdOnString: createdOnString ?? this.createdOnString,
            changedOnString: changedOnString ?? this.changedOnString,
            supplierCode: supplierCode ?? this.supplierCode,
            supplierName: supplierName ?? this.supplierName,
            taxPerc: taxPerc ?? this.taxPerc,
            productBarcode: productBarcode ?? this.productBarcode,
            boxCount: boxCount ?? this.boxCount,
            productImgBase64String: productImgBase64String ?? this.productImgBase64String,
            productImageFileName: productImageFileName ?? this.productImageFileName,
            productImagePath: productImagePath ?? this.productImagePath,
            minSellingCost: minSellingCost ?? this.minSellingCost,
            minSellingBoxCost: minSellingBoxCost ?? this.minSellingBoxCost,
            tag: tag ?? this.tag,
            isWeight: isWeight ?? this.isWeight,
            uomPriceDetail: uomPriceDetail ?? this.uomPriceDetail,
            stockWQty: stockWQty ?? this.stockWQty,
            unitMarginPerc: unitMarginPerc ?? this.unitMarginPerc,
            boxMarginPerc: boxMarginPerc ?? this.boxMarginPerc,
            haveTransaction: haveTransaction ?? this.haveTransaction,
            ecommerceDetail: ecommerceDetail ?? this.ecommerceDetail,
            ecommerceGalleryImages: ecommerceGalleryImages ?? this.ecommerceGalleryImages,
            haveBatch: haveBatch ?? this.haveBatch,
            haveSerialNo: haveSerialNo ?? this.haveSerialNo,
            haveExpiryDate: haveExpiryDate ?? this.haveExpiryDate,
            haveMfDate: haveMfDate ?? this.haveMfDate,
            posMinSellingPrice: posMinSellingPrice ?? this.posMinSellingPrice,
            posSellingPrice: posSellingPrice ?? this.posSellingPrice,
            publishToPos: publishToPos ?? this.publishToPos,
        );

    factory Result.fromRawJson(String str) => Result.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        productName: json["ProductName"],
        orgId: json["OrgId"],
        branchCode: json["BranchCode"],
        code: json["Code"],
        name: json["Name"],
        productCode: json["ProductCode"],
        specification: json["Specification"],
        category: json["Category"],
        subCategory: json["SubCategory"],
        categoryName: json["CategoryName"],
        subCategoryName: json["SubCategoryName"],
        uom: json["Uom"],
        uomName: json["UomName"],
        pcsPerCarton: json["PcsPerCarton"],
        productType: json["ProductType"],
        brand: json["Brand"],
        weight: json["Weight"],
        unitCost: json["UnitCost"],
        averageCost: json["AverageCost"],
        pcsPrice: json["PcsPrice"],
        cartonPrice: json["CartonPrice"],
        barCode: json["BarCode"],
        displayOrder: json["DisplayOrder"],
        isActive: json["IsActive"],
        isStock: json["IsStock"],
        createdBy: json["CreatedBy"],
        createdOn: json["CreatedOn"] == null ? null : DateTime.parse(json["CreatedOn"]),
        changedBy: json["ChangedBy"],
        changedOn: json["ChangedOn"] == null ? null : DateTime.parse(json["ChangedOn"]),
        sellingCost: json["SellingCost"],
        sellingBoxCost: json["SellingBoxCost"],
        stockQty: json["StockQty"],
        stockBoxQty: json["StockBoxQty"],
        stockPcsQty: json["StockPcsQty"],
        salesAccount: json["SalesAccount"],
        inventoryAccount: json["InventoryAccount"],
        cogAccount: json["COGAccount"],
        productImageString: json["ProductImageString"],
        productImage: json["ProductImage"],
        createdOnString: json["CreatedOnString"],
        changedOnString: json["ChangedOnString"],
        supplierCode: json["SupplierCode"],
        supplierName: json["SupplierName"],
        taxPerc: json["TaxPerc"],
        productBarcode: json["ProductBarcode"],
        boxCount: json["BoxCount"],
        productImgBase64String: json["ProductImg_Base64String"],
        productImageFileName: json["ProductImageFileName"],
        productImagePath: json["ProductImagePath"],
        minSellingCost: json["MinSellingCost"],
        minSellingBoxCost: json["MinSellingBoxCost"],
        tag: json["Tag"],
        isWeight: json["IsWeight"],
        uomPriceDetail: json["UomPriceDetail"],
        stockWQty: json["StockWQty"],
        unitMarginPerc: json["UnitMarginPerc"],
        boxMarginPerc: json["BoxMarginPerc"],
        haveTransaction: json["HaveTransaction"],
        ecommerceDetail: json["EcommerceDetail"] == null ? [] : List<EcommerceDetail>.from(json["EcommerceDetail"]!.map((x) => EcommerceDetail.fromJson(x))),
        ecommerceGalleryImages: json["EcommerceGalleryImages"],
        haveBatch: json["HaveBatch"],
        haveSerialNo: json["HaveSerialNo"],
        haveExpiryDate: json["HaveExpiryDate"],
        haveMfDate: json["HaveMfDate"],
        posMinSellingPrice: json["POSMinSellingPrice"],
        posSellingPrice: json["POSSellingPrice"],
        publishToPos: json["PublishToPos"],
    );

    Map<String, dynamic> toJson() => {
        "ProductName": productName,
        "OrgId": orgId,
        "BranchCode": branchCode,
        "Code": code,
        "Name": name,
        "ProductCode": productCode,
        "Specification": specification,
        "Category": category,
        "SubCategory": subCategory,
        "CategoryName": categoryName,
        "SubCategoryName": subCategoryName,
        "Uom": uom,
        "UomName": uomName,
        "PcsPerCarton": pcsPerCarton,
        "ProductType": productType,
        "Brand": brand,
        "Weight": weight,
        "UnitCost": unitCost,
        "AverageCost": averageCost,
        "PcsPrice": pcsPrice,
        "CartonPrice": cartonPrice,
        "BarCode": barCode,
        "DisplayOrder": displayOrder,
        "IsActive": isActive,
        "IsStock": isStock,
        "CreatedBy": createdBy,
        "CreatedOn": createdOn?.toIso8601String(),
        "ChangedBy": changedBy,
        "ChangedOn": changedOn?.toIso8601String(),
        "SellingCost": sellingCost,
        "SellingBoxCost": sellingBoxCost,
        "StockQty": stockQty,
        "StockBoxQty": stockBoxQty,
        "StockPcsQty": stockPcsQty,
        "SalesAccount": salesAccount,
        "InventoryAccount": inventoryAccount,
        "COGAccount": cogAccount,
        "ProductImageString": productImageString,
        "ProductImage": productImage,
        "CreatedOnString": createdOnString,
        "ChangedOnString": changedOnString,
        "SupplierCode": supplierCode,
        "SupplierName": supplierName,
        "TaxPerc": taxPerc,
        "ProductBarcode": productBarcode,
        "BoxCount": boxCount,
        "ProductImg_Base64String": productImgBase64String,
        "ProductImageFileName": productImageFileName,
        "ProductImagePath": productImagePath,
        "MinSellingCost": minSellingCost,
        "MinSellingBoxCost": minSellingBoxCost,
        "Tag": tag,
        "IsWeight": isWeight,
        "UomPriceDetail": uomPriceDetail,
        "StockWQty": stockWQty,
        "UnitMarginPerc": unitMarginPerc,
        "BoxMarginPerc": boxMarginPerc,
        "HaveTransaction": haveTransaction,
        "EcommerceDetail": ecommerceDetail == null ? [] : List<dynamic>.from(ecommerceDetail!.map((x) => x.toJson())),
        "EcommerceGalleryImages": ecommerceGalleryImages,
        "HaveBatch": haveBatch,
        "HaveSerialNo": haveSerialNo,
        "HaveExpiryDate": haveExpiryDate,
        "HaveMfDate": haveMfDate,
        "POSMinSellingPrice": posMinSellingPrice,
        "POSSellingPrice": posSellingPrice,
        "PublishToPos": publishToPos,
    };
}

class EcommerceDetail {
    final dynamic? orgId;
    final String? productCode;
    final String? desciption;
    final String? specification;
    final dynamic sellingPrice;
    final String? seoMetaTitle;
    final String? seoMetaKeyword;
    final String? seoMetaDescription;
    final bool? publishOnWeb;
    final bool? stockAvailability;
    final dynamic qtyOnHand;
    final String? createdBy;
    final DateTime? createdOn;
    final dynamic surcharge;
    final dynamic stockStatus;
    final dynamic branch;
    final dynamic selectedAddons;
    final dynamic videoProvider;
    final dynamic videoLink;
    final dynamic haveAddon;

    EcommerceDetail({
        this.orgId,
        this.productCode,
        this.desciption,
        this.specification,
        this.sellingPrice,
        this.seoMetaTitle,
        this.seoMetaKeyword,
        this.seoMetaDescription,
        this.publishOnWeb,
        this.stockAvailability,
        this.qtyOnHand,
        this.createdBy,
        this.createdOn,
        this.surcharge,
        this.stockStatus,
        this.branch,
        this.selectedAddons,
        this.videoProvider,
        this.videoLink,
        this.haveAddon,
    });

    EcommerceDetail copyWith({
        dynamic? orgId,
        String? productCode,
        String? desciption,
        String? specification,
        dynamic sellingPrice,
        String? seoMetaTitle,
        String? seoMetaKeyword,
        String? seoMetaDescription,
        bool? publishOnWeb,
        bool? stockAvailability,
        dynamic qtyOnHand,
        String? createdBy,
        DateTime? createdOn,
        dynamic surcharge,
        dynamic stockStatus,
        dynamic branch,
        dynamic selectedAddons,
        dynamic videoProvider,
        dynamic videoLink,
        dynamic haveAddon,
    }) => 
        EcommerceDetail(
            orgId: orgId ?? this.orgId,
            productCode: productCode ?? this.productCode,
            desciption: desciption ?? this.desciption,
            specification: specification ?? this.specification,
            sellingPrice: sellingPrice ?? this.sellingPrice,
            seoMetaTitle: seoMetaTitle ?? this.seoMetaTitle,
            seoMetaKeyword: seoMetaKeyword ?? this.seoMetaKeyword,
            seoMetaDescription: seoMetaDescription ?? this.seoMetaDescription,
            publishOnWeb: publishOnWeb ?? this.publishOnWeb,
            stockAvailability: stockAvailability ?? this.stockAvailability,
            qtyOnHand: qtyOnHand ?? this.qtyOnHand,
            createdBy: createdBy ?? this.createdBy,
            createdOn: createdOn ?? this.createdOn,
            surcharge: surcharge ?? this.surcharge,
            stockStatus: stockStatus ?? this.stockStatus,
            branch: branch ?? this.branch,
            selectedAddons: selectedAddons ?? this.selectedAddons,
            videoProvider: videoProvider ?? this.videoProvider,
            videoLink: videoLink ?? this.videoLink,
            haveAddon: haveAddon ?? this.haveAddon,
        );

    factory EcommerceDetail.fromRawJson(String str) => EcommerceDetail.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory EcommerceDetail.fromJson(Map<String, dynamic> json) => EcommerceDetail(
        orgId: json["OrgId"],
        productCode: json["ProductCode"],
        desciption: json["Desciption"],
        specification: json["Specification"],
        sellingPrice: json["SellingPrice"],
        seoMetaTitle: json["SEOMetaTitle"],
        seoMetaKeyword: json["SEOMetaKeyword"],
        seoMetaDescription: json["SEOMetaDescription"],
        publishOnWeb: json["PublishOnWeb"],
        stockAvailability: json["StockAvailability"],
        qtyOnHand: json["QtyOnHand"],
        createdBy: json["CreatedBy"],
        createdOn: json["CreatedOn"] == null ? null : DateTime.parse(json["CreatedOn"]),
        surcharge: json["Surcharge"],
        stockStatus: json["StockStatus"],
        branch: json["Branch"],
        selectedAddons: json["SelectedAddons"],
        videoProvider: json["VideoProvider"],
        videoLink: json["VideoLink"],
        haveAddon: json["HaveAddon"],
    );

    Map<String, dynamic> toJson() => {
        "OrgId": orgId,
        "ProductCode": productCode,
        "Desciption": desciption,
        "Specification": specification,
        "SellingPrice": sellingPrice,
        "SEOMetaTitle": seoMetaTitle,
        "SEOMetaKeyword": seoMetaKeyword,
        "SEOMetaDescription": seoMetaDescription,
        "PublishOnWeb": publishOnWeb,
        "StockAvailability": stockAvailability,
        "QtyOnHand": qtyOnHand,
        "CreatedBy": createdBy,
        "CreatedOn": createdOn?.toIso8601String(),
        "Surcharge": surcharge,
        "StockStatus": stockStatus,
        "Branch": branch,
        "SelectedAddons": selectedAddons,
        "VideoProvider": videoProvider,
        "VideoLink": videoLink,
        "HaveAddon": haveAddon,
    };
}

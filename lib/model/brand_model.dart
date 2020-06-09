import 'package:flutter/cupertino.dart';

import './shop_id_model.dart';

class BrandModel with ChangeNotifier {
  String _id;
  bool is_feature;
  bool is_disabled;
  bool isDelete;
  ShopIdModel shop_id;
  String brand_name = 'brand name ajhs basd astyytcx';
  String brand_key;
  String meta_title;
  String meta_keyword;
  String brand_logo;
  String brand_image;
  String short_description;
  String description;
  String createdAt;
  String updatedAt;

  void setBrandName(String brandName) {
    print('brand name ${brandName}');
    // if (this.brand_name.length < 12) {
    //   this.brand_name += '1';
    // } else
    if (this.brand_name.length > 6) {
      this.brand_name =
          this.brand_name.substring(0, this.brand_name.length - 2);
    }
    notifyListeners();
  }

  String getBrandName() {
    return this.brand_name;
  }

  BrandModel();

  // BrandModel(
  //     this._id,
  //     this.is_feature,
  //     this.is_disabled,
  //     this.isDelete,
  //     this.shop_id,
  //     this.brand_name,
  //     this.brand_key,
  //     this.meta_title,
  //     this.meta_keyword,
  //     this.brand_logo,
  //     this.brand_image,
  //     this.short_description,
  //     this.description,
  //     this.createdAt,
  //     this.updatedAt);
}

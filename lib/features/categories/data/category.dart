class CategoryModel {
  final String? idCategory;
  final String? strCategory;
  final String? strCategoryThumb;
  // OfferModel? offerModel;

  CategoryModel({
    required this.idCategory,
    required this.strCategoryThumb,
    required this.strCategory,
    // required this.offerModel,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      idCategory: json["idCategory"],
      strCategoryThumb: json["strCategoryThumb"],
      strCategory: json["strCategory"],
      // offerModel: OfferModel.fromJson(json),
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'idCategory': idCategory,
      'strCategory': strCategory,
      'strCategoryThumb': strCategoryThumb,
    };
  }
}

// class OfferModel {
//   int? discount;
//
//   OfferModel(this.discount);
//
//   factory OfferModel.fromJson(Map<String, dynamic> json) {
//     return OfferModel(json["discount"]);
//   }
// }


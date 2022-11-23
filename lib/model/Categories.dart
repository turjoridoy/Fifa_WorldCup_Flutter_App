class Categories {
  String id;
  String category;
  List<SubCat> subCat;

  Categories({this.id, this.category, this.subCat});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'];
    if (json['sub_cat'] != null) {
      subCat = <SubCat>[];
      json['sub_cat'].forEach((v) {
        subCat.add(new SubCat.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category'] = this.category;
    if (this.subCat != null) {
      data['sub_cat'] = this.subCat.map((v) => v.toJson()).toList();
    }
    return data;
  }

  static List<Categories> fromJsonList(jsonList) {
    return jsonList.map<Categories>((obj) => Categories.fromJson(obj)).toList();
  }

}

class SubCat {
  String id;
  String name;
  String type;

  SubCat({this.id, this.name, this.type});

  SubCat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['type'] = this.type;
    return data;
  }
}
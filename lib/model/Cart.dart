
class MyCart {
  int id;
  List<Sides> sides;
  String tsCreated;
  String tsUpdated;
  int quantity;
  String ifCanceled;
  String instruction;
  int totalPrice;
  String deviceId;
  int user;

  MyCart(
      {this.id,
        this.sides,
        this.tsCreated,
        this.tsUpdated,
        this.quantity,
        this.ifCanceled,
        this.instruction,
        this.totalPrice,
        this.deviceId,
        this.user});

  MyCart.fromJson(Map<String, dynamic> json) {
    id = json['id'];


    if (json['sides'] != null) {
      sides = new List<Sides>();
      json['sides'].forEach((v) {
        sides.add(new Sides.fromJson(v));
      });
    }
    tsCreated = json['ts_created'];
    tsUpdated = json['ts_updated'];
    quantity = json['quantity'];
    ifCanceled = json['if_canceled'];
    instruction = json['instruction'];
    totalPrice = json['total_price'];
    deviceId = json['device_id'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;

    if (this.sides != null) {
      data['sides'] = this.sides.map((v) => v.toJson()).toList();
    }
    data['ts_created'] = this.tsCreated;
    data['ts_updated'] = this.tsUpdated;
    data['quantity'] = this.quantity;
    data['if_canceled'] = this.ifCanceled;
    data['instruction'] = this.instruction;
    data['total_price'] = this.totalPrice;
    data['device_id'] = this.deviceId;
    data['user'] = this.user;
    return data;
  }


  static List<MyCart> fromJsonList(jsonList) {
    return jsonList.map<MyCart>((obj) => MyCart.fromJson(obj)).toList();
  }
}




class Sides {
  int id;
  String tsCreated;
  String tsUpdated;
  String title;
  String description;
  int group;
  String image;
  int price;
  int category;

  Sides(
      {this.id,
        this.tsCreated,
        this.tsUpdated,
        this.title,
        this.description,
        this.group,
        this.image,
        this.price,
        this.category});

  Sides.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tsCreated = json['ts_created'];
    tsUpdated = json['ts_updated'];
    title = json['title'];
    description = json['description'];
    group = json['group'];
    image = json['image'];
    price = json['price'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ts_created'] = this.tsCreated;
    data['ts_updated'] = this.tsUpdated;
    data['title'] = this.title;
    data['description'] = this.description;
    data['group'] = this.group;
    data['image'] = this.image;
    data['price'] = this.price;
    data['category'] = this.category;
    return data;
  }
}


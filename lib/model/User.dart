class Users {
  int id;
  String tsCreated;
  String tsUpdated;
  String name;
  String phone;
  String image;
  String google;
  String address;
  String password;
  String email;
  String mobileInfo;
  int type;

  Users(
      {this.id,
        this.tsCreated,
        this.tsUpdated,
        this.name,
        this.phone,
        this.image,
        this.google,
        this.address,
        this.password,
        this.email,
        this.mobileInfo,
        this.type});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tsCreated = json['ts_created'];
    tsUpdated = json['ts_updated'];
    name = json['name'];
    phone = json['phone'];
    image = json['image'];
    google = json['google'];
    address = json['address'];
    password = json['password'];
    email = json['email'];
    mobileInfo = json['mobile_info'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ts_created'] = this.tsCreated;
    data['ts_updated'] = this.tsUpdated;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['image'] = this.image;
    data['google'] = this.google;
    data['address'] = this.address;
    data['password'] = this.password;
    data['email'] = this.email;
    data['mobile_info'] = this.mobileInfo;
    data['type'] = this.type;
    return data;
  }

  static List<Users> fromJsonList(jsonList) {
    return jsonList.map<Users>((obj) => Users.fromJson(obj)).toList();
  }
}
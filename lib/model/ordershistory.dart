class OrdersHistory {
  int id;
  String serviceName;
  String serviceType;
  String deliveryArea;
  String tsCreated;
  String tsUpdated;
  String customerName;
  String customerPhone;
  String fullAddress;
  String vendorName;
  String workerName;
  String workerPhone;
  int price;
  bool vendorPaymentCollected;
  bool paymentCollected;
  String hubTime;
  String onTheWayTime;
  String deliveryTime;
  int creator;
  String note;
  int status;

  OrdersHistory(
      {this.id,
        this.serviceName,
        this.serviceType,
        this.deliveryArea,
        this.tsCreated,
        this.tsUpdated,
        this.customerName,
        this.customerPhone,
        this.fullAddress,
        this.vendorName,
        this.workerName,
        this.workerPhone,
        this.price,
        this.vendorPaymentCollected,
        this.paymentCollected,
        this.onTheWayTime,
        this.deliveryTime,
        this.creator,
        this.note,
        this.status});

  OrdersHistory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceName = json['service_name'];
    serviceType = json['service_type'];
    deliveryArea = json['delivery_area'];
    tsCreated = json['ts_created'];
    tsUpdated = json['ts_updated'];
    customerName = json['customer_name'];
    customerPhone = json['customer_phone'];
    fullAddress = json['full_address'];
    vendorName = json['vendor_name'];
    workerName = json['worker_name'];
    workerPhone = json['worker_phone'];
    price = json['price'];
    vendorPaymentCollected = json['vendor_payment_collected'];
    paymentCollected = json['payment_collected'];
    onTheWayTime = json['on_the_way_time'];
    deliveryTime = json['delivery_time'];
    creator = json['creator'];
    note = json['note'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['service_name'] = this.serviceName;
    data['service_type'] = this.serviceType;
    data['delivery_area'] = this.deliveryArea;
    data['ts_created'] = this.tsCreated;
    data['ts_updated'] = this.tsUpdated;
    data['customer_name'] = this.customerName;
    data['customer_phone'] = this.customerPhone;
    data['full_address'] = this.fullAddress;
    data['vendor_name'] = this.vendorName;
    data['worker_name'] = this.workerName;
    data['worker_phone'] = this.workerPhone;
    data['price'] = this.price;
    data['vendor_payment_collected'] = this.vendorPaymentCollected;
    data['payment_collected'] = this.paymentCollected;
    data['on_the_way_time'] = this.onTheWayTime;
    data['delivery_time'] = this.deliveryTime;
    data['creator'] = this.creator;
    data['note'] = this.note;
    data['status'] = this.status;
    return data;
  }

  static List<OrdersHistory> fromJsonList(jsonList) {
    return jsonList.map<OrdersHistory>((obj) => OrdersHistory.fromJson(obj)).toList();
  }

}


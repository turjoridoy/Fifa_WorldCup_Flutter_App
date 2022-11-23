import 'dart:convert';

import 'package:qatar_wc/model/Categories.dart';

import '../model/ordershistory.dart';

List<OrdersHistory> getOrderHistory() {
  var list = [
    {
      "id": 1,
      "service_name": "A Cleaning",
      "service_type": "A",
      "delivery_area": "Mohammadpur",
      "ts_created": "2021-09-07T13:43:04.974012Z",
      "ts_updated": "2021-09-07T13:43:04.974634Z",
      "customer_name": "Sadman Hossain Ridoy",
      "customer_phone": "A",
      "full_address": "12/B Dhaka ",
      "vendor_name": "Brothers Furniture",
      "worker_name": "A Islam",
      "worker_phone": "A",
      "price": 1200,
      "vendor_payment_collected": false,
      "payment_collected": false,
      "on_the_way_time": null,
      "delivery_time": null,
      "creator": 1,
      "note": "",
      "status": 1,
    },
    {
      "id": 2,
      "service_name": "A Repairing",
      "service_type": "A",
      "delivery_area": "A",
      "ts_created": "2021-09-07T13:43:04.974012Z",
      "ts_updated": "2021-09-07T13:43:04.974634Z",
      "customer_name": "Sadman Hossain Ridoy",
      "customer_phone": "A",
      "full_address": "12/B Dhaka ",
      "vendor_name": "Brothers Furniture",
      "worker_name": "Rony Islam",
      "worker_phone": "01701062746",
      "price": 1200,
      "vendor_payment_collected": false,
      "payment_collected": false,
      "on_the_way_time": null,
      "delivery_time": null,
      "creator": 3,
      "note": "",
      "status": 1,
    },
    {
      "id": 3,
      "service_name": "Sofa Wash",
      "service_type": "A",
      "delivery_area": "Mohammadpur",
      "ts_created": "2021-09-07T13:43:04.974012Z",
      "ts_updated": "2021-09-07T13:43:04.974634Z",
      "customer_name": "Sadman Hossain Ridoy",
      "customer_phone": "01689056653",
      "full_address": "12/B Dhaka ",
      "vendor_name": "Brothers A",
      "worker_name": "Sadman Islam",
      "worker_phone": "01701062746",
      "price": 1200,
      "vendor_payment_collected": false,
      "payment_collected": false,
      "on_the_way_time": null,
      "delivery_time": null,
      "creator": 23,
      "note": "",
      "status": 1,
    },
    {
      "id": 4,
      "service_name": "A Cleaning",
      "service_type": "A",
      "delivery_area": "Mohammadpur",
      "ts_created": "2021-09-07T13:43:04.974012Z",
      "ts_updated": "2021-09-07T13:43:04.974634Z",
      "customer_name": "Sadman Hossain Ridoy",
      "customer_phone": "01689056653",
      "full_address": "12/B Dhaka ",
      "vendor_name": "Brothers A",
      "worker_name": "Jahurul Islam",
      "worker_phone": "01701062746",
      "price": 1200,
      "vendor_payment_collected": false,
      "payment_collected": false,
      "on_the_way_time": null,
      "delivery_time": null,
      "creator": 23,
      "note": "",
      "status": 1,
    },
    {
      "id": 5,
      "service_name": "A Cleaning",
      "service_type": "A",
      "delivery_area": "Mohammadpur",
      "ts_created": "2021-09-07T13:43:04.974012Z",
      "ts_updated": "2021-09-07T13:43:04.974634Z",
      "customer_name": "Sadman Hossain Ridoy",
      "customer_phone": "01689056653",
      "full_address": "12/B Dhaka ",
      "vendor_name": "Brothers A",
      "worker_name": "Jahurul Islam",
      "worker_phone": "01701062746",
      "price": 1200,
      "vendor_payment_collected": false,
      "payment_collected": false,
      "on_the_way_time": null,
      "delivery_time": null,
      "creator": 23,
      "note": "",
      "status": 1,
    },
  ];
  return OrdersHistory.fromJsonList(jsonDecode(jsonEncode(list)));
}


List<Categories> getCategories(){
  var list = [
    {
      "id": "1",
      "category": "A",
      "sub_cat": [
        {
          "id": "1",
          "name": "Sofa A",
          "features": [
            {
              "feature": "5 Seat Sofa A",
              "price": 200,
              "discount_price": 150,
              "unit": 1
            },
            {
              "feature": "6 Seat Sofa A",
              "price": 250,
              "discount_price": 150,
              "unit": 1
            },
            {
              "feature": "7 Seat Sofa A",
              "price": 300,
              "discount_price": 250,
              "unit": 1
            },
            {
              "feature": "8 Seat Sofa A",
              "price": 400,
              "discount_price": 350,
              "unit": 1
            }
          ]
         },
        {
          "id": "2",
          "name": "Chair A",
          "features": [
            {
              "feature": "1 Chair A",
              "price": 200,
              "discount_price": 150,
              "unit": 1
            },
            {
              "feature": "2 Chair A",
              "price": 250,
              "discount_price": 200,
              "unit": 1
            },
            {
              "feature": "3 Chair A",
              "price": 300,
              "discount_price": 250,
              "unit": 1
            },
            {
              "feature": "4 Chair A",
              "price": 400,
              "discount_price": 350,
              "unit": 1
            }
          ]
        },
        {
          "id": "3",
          "name": "Bed A",
          "features": [
            {
              "feature": "Single Bed A",
              "price": 200,
              "discount_price": 150,
              "unit": 1
            },
            {
              "feature": "Double Bed A",
              "price": 250,
              "discount_price": 200,
              "unit": 1
            },
            {
              "feature": "Master Bed A",
              "price": 300,
              "discount_price": 250,
              "unit": 1
            }
          ]
        },
        {
          "id": "4",
          "name": "Kitchen A",
          "features": [
            {
              "feature": "Kitchen A Per Square Feet",
              "price": 10,
              "unit": 1
            },
          ]
        }
      ]
    },
    {
      "id": "2",
      "category": "A",
      "sub_cat": [
        {
          "id": "1",
          "name": "Sofa A",
          "features": [
            {
              "feature": "5 Seat Sofa A",
              "price": 200,
              "discount_price": 150,
              "unit": 1
            },
            {
              "feature": "6 Seat Sofa A",
              "price": 250,
              "discount_price": 150,
              "unit": 1
            },
            {
              "feature": "7 Seat Sofa A",
              "price": 300,
              "discount_price": 250,
              "unit": 1
            },
            {
              "feature": "8 Seat Sofa A",
              "price": 400,
              "discount_price": 350,
              "unit": 1
            }
          ]
        },
        {
          "id": "2",
          "name": "Chair Cleaning",
          "features": [
            {
              "feature": "1 Chair Cleaning",
              "price": 200,
              "discount_price": 150,
              "unit": 1
            },
            {
              "feature": "2 Chair Cleaning",
              "price": 250,
              "discount_price": 200,
              "unit": 1
            },
            {
              "feature": "3 Chair Cleaning",
              "price": 300,
              "discount_price": 250,
              "unit": 1
            },
            {
              "feature": "4 Chair Cleaning",
              "price": 400,
              "discount_price": 350,
              "unit": 1
            }
          ]
        },
        {
          "id": "3",
          "name": "Bed Cleaning",
          "features": [
            {
              "feature": "Single Bed Cleaning",
              "price": 200,
              "discount_price": 150,
              "unit": 1
            },
            {
              "feature": "Double Bed Cleaning",
              "price": 250,
              "discount_price": 200,
              "unit": 1
            },
            {
              "feature": "Master Bed Cleaning",
              "price": 300,
              "discount_price": 250,
              "unit": 1
            }
          ]
        },
        {
          "id": "4",
          "name": "Kitchen Cleaning",
          "features": [
            {
              "feature": "Kitchen Clean Per Square Feet",
              "price": 10,
              "unit": 1
            },
          ]
        }
      ]
    },

    {
      "id": "3",
      "category": "Varnish",
      "sub_cat": [
        {
          "id": "1",
          "name": "Liquare Varnish",
          "features": [
            {
              "feature": "Kitchen Clean Per Square Feet",
              "price": 10,
              "unit": 1
            },
          ]
        },
        {
          "id": "2",
          "name": "Hand Polish",
          "features": [
            {
              "feature": "Kitchen Clean Per Square Feet",
              "price": 10,
              "unit": 1
            },
          ]

        },
        {
          "id": "3",
          "name": "Spray Polish",
          "features": [
            {
              "feature": "Kitchen Clean Per Square Feet",
              "price": 10,
              "unit": 1
            },
          ]
        }
      ]
    },


    {
      "id": "4",
      "category": "Interior",
      "sub_cat": [
        {
          "id": "1",
          "name": "Home Interior",
          "features": [
            {
              "feature": "Kitchen Clean Per Square Feet",
              "price": 10,
              "unit": 1
            },
          ]
        },
        {
          "id": "2",
          "name": "Room Interior",
          "features": [
            {
              "feature": "Kitchen Clean Per Square Feet",
              "price": 10,
              "unit": 1
            },
          ]
        },
        {
          "id": "3",
          "name": "Kitchen Interior",
          "features": [
            {
              "feature": "Kitchen Clean Per Square Feet",
              "price": 10,
              "unit": 1
            },
          ]
        }
      ]
    },


    {
      "id": "5",
      "category": "Others",
      "sub_cat": [
        {
          "id": "1",
          "name": "Pest Control Service",
          "features": [
            {
              "feature": "Cockroach Control",
              "price": 10,
              "unit": 1
            },
            {
              "feature": "Rodent Control",
              "price": 10,
              "unit": 1
            },
            {
              "feature": "Bed Bug Control",
              "price": 10,
              "unit": 1
            },
          ]
        }
      ]
    }
  ];


  return Categories.fromJsonList(jsonDecode(jsonEncode(list)));
}
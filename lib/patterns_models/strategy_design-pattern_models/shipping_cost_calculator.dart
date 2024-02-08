class Address {
  String contactName;
  String addressLine1;
  String addressLine2;
  String city;
  String region;
  String country;
  String postalCode;

  Address({
    required this.contactName,
    required this.addressLine1,
    required this.addressLine2,
    required this.city,
    required this.region,
    required this.country,
    required this.postalCode,
  });
}

enum ShippingOptions {
  ups,
  fedex,
  purulator,
}

class Order {
  ShippingOptions shippingMethod;
  Address destination;
  Address origin;

  Order({
    required this.shippingMethod,
    required this.destination,
    required this.origin,
  });
}

abstract class ShippingMethod {
  double calculateShippingCost(Order order);
}

class PurulatorShipping implements ShippingMethod {
  @override
  double calculateShippingCost(Order order) {
    return 5.00;
  }
}

class UPSShipping implements ShippingMethod {
  @override
  double calculateShippingCost(Order order) {
    return 7.25;
  }
}

class FedExShipping implements ShippingMethod {
  @override
  double calculateShippingCost(Order order) {
    return 9.25;
  }
}

class AmazonShipping implements ShippingMethod {
  @override
  double calculateShippingCost(Order order) {
    return 3.25;
  }
}

class Shipping {
  ShippingMethod _shippingMethod;

  Shipping(this._shippingMethod);

  chooseShippingMethod(ShippingMethod shippingMethod) {
    _shippingMethod = shippingMethod;
  }

  double getShippingCost(Order order) {
    return _shippingMethod.calculateShippingCost(order);
  }
}

// class ShippingCostCalculatorService {
//   double calculateShippingCost(Order order) {
//     switch (order.shippingMethod) {
//       case ShippingOptions.fedex:
//         return calculateForFedEx(order);
//
//       case ShippingOptions.ups:
//         return calculateForUPS(order);
//
//       case ShippingOptions.purulator:
//         return calculateForPurulator(order);
//
//       default:
//         throw Exception("Unknown carrier");
//     }
//   }
//
//   ///////////////////////////////////////////////////////////////
//   /// Terrible coding practice
//   ///
//   /// Should be handled through a strategy pattern
//   double calculateForPurulator(Order order) {
//     return 5.00;
//   }
//
//   double calculateForUPS(Order order) {
//     return 7.25;
//   }
//
//   double calculateForFedEx(Order order) {
//     return 9.25;
//   }
// }

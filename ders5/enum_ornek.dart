//sipariş kabul edildi
//sipariş red edildi
//sipariş iade edildi
//sipariş hazırlanıyor edildi

enum OrderStatus {
  kabul,
  red,
  iade,
  hazirlaniyor,
}

extension OrderStatusExtension on OrderStatus {
  void toPrint() {
    switch (this) {
      case OrderStatus.kabul:
        print("kabul");
      case OrderStatus.red:
        print("red");
      case OrderStatus.iade:
        print("iade");
      case OrderStatus.hazirlaniyor:
        print("hazırlanıyor");
      default:
        print("durum belli değil");
    }
  }
}

void main() {
  OrderStatus status = OrderStatus.iade;
  OrderStatus orderStatus1 = OrderStatus.red;
  // orderStatusPrint(orderStatus1);
  // orderStatusPrint(status);

  orderStatus1.toPrint();
}

void orderStatusPrint(OrderStatus status) {
  switch (status) {
    case OrderStatus.kabul:
      print("kabul");
    case OrderStatus.red:
      print("red");
    case OrderStatus.iade:
      print("iade");
    case OrderStatus.hazirlaniyor:
      print("hazırlanıyor");
    default:
      print("durum belli değil");
  }
}

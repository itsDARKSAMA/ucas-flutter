// Abdelrahman M. Almajayda -- 120190071
void main(List<String> args) {
  Order order1 = Order(
    12,
    "laptop",
  );

  Order order2 = Order(
    15,
    "mouse",
    orderDate: "12/3/2023",
    orderExpireDate: "14/3/2023",
  );

  Order order3 = Order.first(
    18,
    "headphones",
    "14/3/2023",
    orderDate: "12/3/2023",
  );

  Order order4 = Order.first(
    20,
    "mousepad",
    "20/4/2023",
  );

  order1.welcome();
  order1.printOrderDetails();
  order2.printOrderDetails();
  order3.printOrderDetails();
  order4.printOrderDetails();
}

class Order {
  final int _orderNum;
  final String _orderName, orderDate, orderExpireDate;

  const Order(
    this._orderNum,
    this._orderName, {
    this.orderDate = '11/3/2023',
    this.orderExpireDate = '12/3/2023',
  });

  const Order.first(
    this._orderNum,
    this._orderName,
    this.orderExpireDate, {
    this.orderDate = "11/3/2023",
  });

  void printOrderDetails() {
    print("""
    Order Number : [ $_orderNum ]
    Order Name : [ $_orderName ]
    Order Date [ $orderDate ]
    Order Expire Date [ $orderExpireDate ]
    """);
  }

  void welcome() {
    print("Welcome to order class , created by DaRK-SAMA");
  }
}

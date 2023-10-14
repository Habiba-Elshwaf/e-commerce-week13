class Orders{
  String id;
  String totalAmount;
  DateTime orderDate;
  int deliveryData;
  String deliveryStatus;

  Orders({
    required this.id,
    required this.totalAmount,
    required this.orderDate,
    required this.deliveryData,
    required this.deliveryStatus,
  });
  @override
  String toString() {
    return '''
      ID: $id
      Total Amount: $totalAmount
      Order Date: $orderDate
      Delivery Data: $deliveryData
      Delivery Status: $deliveryStatus 
    ''';
  }

}
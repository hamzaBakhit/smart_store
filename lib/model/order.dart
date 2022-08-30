enum PaymentType { online, cash }

enum Status { waiting, processing, canceled, rejected, delivered }

class Model {
  int number;
  PaymentType paymentType;
  double total;
  Status status;
  DateTime date;

  Model(this.number, this.paymentType, this.total, this.status, this.date);
}

import 'package:nyasa/constents/consts.dart';

class OrderController extends GetxController implements GetxService {
  int _paymentIndex = 0;
  int get paymentIndex => _paymentIndex;

  void setPaymentIndex(int index) {
    _paymentIndex = index;
    update();
  }
}

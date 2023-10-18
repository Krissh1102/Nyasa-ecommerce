import 'package:flutter/material.dart';
import 'package:nyasa/constents/consts.dart';
import 'package:nyasa/view/Order_Now/order_controller.dart';

class PaymentButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final int index;
  const PaymentButton(
      {super.key,
      required this.icon,
      required this.index,
      required this.subtitle,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderController>(builder: (OrderController) {
      bool _selected = OrderController.paymentIndex == index;
      return InkWell(
        onTap: () => OrderController.setPaymentIndex(index),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[200]!, blurRadius: 5, spreadRadius: 1)
              ]),
          child: ListTile(
              leading: Icon(icon,
                  size: 40, color: _selected ? Colors.green : Colors.grey),
              title: Text(
                title,
                style: const TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              trailing: _selected
                  ? const Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                    )
                  : null),
        ),
      );
    });
  }
}

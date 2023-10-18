import 'package:flutter/material.dart';

class Dropdownmenu extends StatefulWidget {
  const Dropdownmenu({super.key});

  @override
  State<Dropdownmenu> createState() => _DropdownmenuState();
}

class _DropdownmenuState extends State<Dropdownmenu> {
  String? valueChoose;
  List listitem = [
    ' All',
    ' Price 500-1000',
    ' Price 1000-2000',
    ' Price 2000-3000',
    ' Price 3000-4000',
    ' Price 4000-5000',
    ' More then 5000'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 4, right: 4),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12)),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(12),
        underline: const SizedBox(),
        elevation: 1,
        style: const TextStyle(color: Colors.white),
        icon: const Icon(Icons.attach_money_outlined),
        hint: const Text(' Price Range'),
        dropdownColor: Colors.black,
        items: listitem.map((valueitem) {
          return DropdownMenuItem(
            value: valueitem,
            child: Text(valueitem),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            valueChoose = newValue.toString();
          });
        },
        value: valueChoose,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DropDownButtonCustom extends StatefulWidget {
  final List<String> listItem;
  final double fontSizeText;

  const DropDownButtonCustom({
    Key? key, 
    required this.listItem,
    required this.fontSizeText
  }) : super(key: key);

  @override
  State<DropDownButtonCustom> createState() => _DropDownButtonCustomState();
}

class _DropDownButtonCustomState extends State<DropDownButtonCustom> {
  String dropdownValue = '';

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.listItem.first;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: DropdownButton(
        elevation: 0,
        value: dropdownValue,
        icon: const Icon(Icons.keyboard_arrow_down_outlined),
        underline: Container(
          height: 0,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: widget.listItem.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value, style: TextStyle(fontWeight: FontWeight.bold, fontSize: widget.fontSizeText),),
          );
        }).toList(),
      ),
    );
  }
}
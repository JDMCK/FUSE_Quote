import 'package:flutter/material.dart';
import 'package:fuse_quote/services/servicewidgets.dart';
import 'package:fuse_quote/services/service.dart';

class Edit extends StatefulWidget {
  Edit({Key? key}) : super(key: key);
  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  String dropDownValue = 'Siding';
  List<String> items = [
    'Siding',
    'Gutters',
    'Windows',
    'Driveway',
    'Roof',
    'Patio',
    'Deck',
    'Soffits',
    'Trim',
    'Fencing',
    'Custom'
  ];

  void saveService(Service service) {
    Navigator.pop(context, service);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 58, 154, 214),
        title: Text('Service Creator', style: TextStyle(fontSize: 28)),
        toolbarHeight: 75,
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Center(
          child: Column(children: [
            DropdownButton(
              value: dropDownValue,
              items: items.map((String item) {
                return DropdownMenuItem(
                  value: item,
                  child: Center(child: Text(item)),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropDownValue = newValue!;
                });
              },
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 58, 154, 214),
              ),
              isExpanded: true,
              borderRadius: BorderRadius.circular(15),
            ),
            if (dropDownValue == 'Siding') Siding(saveService: saveService),
            if (dropDownValue == 'Gutters') Gutters(saveService: saveService),
            if (dropDownValue == 'Windows') Window(saveService: saveService),
            if (dropDownValue == 'Driveway') Driveway(saveService: saveService),
            if (dropDownValue == 'Roof') Roof(saveService: saveService),
            if (dropDownValue == 'Patio') Patio(saveService: saveService),
            if (dropDownValue == 'Deck') Deck(saveService: saveService),
            if (dropDownValue == 'Soffits') Soffits(saveService: saveService),
            if (dropDownValue == 'Trim') Trim(saveService: saveService),
            if (dropDownValue == 'Fencing') Fencing(saveService: saveService),
            if (dropDownValue == 'Custom') Custom(saveService: saveService),
          ]),
        ),
      ),
    );
  }
}

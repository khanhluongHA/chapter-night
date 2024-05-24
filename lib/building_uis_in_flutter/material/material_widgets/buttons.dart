import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text('Text button'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Elevated Buttons'),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text('out line buttons'),
        ),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        DropdownButton(
          items: <String>['Otion1', 'option2', 'option3'].map((String value) {
            return DropdownMenuItem(
              child: Text(value),
              value: value,
            );
          }).toList(),
          onChanged: (String? newValue) {},
          hint: Text('Select an options'),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
      ],
    );
  }
}

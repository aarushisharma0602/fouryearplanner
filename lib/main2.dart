import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beyond the Classroom',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Beyond the Classroom'),
        ),
        body: const Center(
          child: DropdownList(),
        ),
      )
    );
  }
  
}

class DropdownList extends StatefulWidget {
  const DropdownList({Key? key}) : super(key: key);


  @override
  _DropdownListState createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  String dropdownvalue = 'Summer';
  @override
  Widget build(BuildContext context) {
    // return DropdownButton<String>(
    //   value: dropdownvalue,
    //   style: const TextStyle(color: Colors.deepPurple, fontSize: 20),
    //   underline: Container(
    //     height: 2,
    //     color: Colors.deepPurpleAccent,
    //   ),
    //   onChanged: (String? newValue) {
    //     setState(() {
    //       dropdownvalue = newValue!;
    //     });
    //   },
    //   items: <String>['Summer', 'Two', 'Free', 'Four']
    //       .map<DropdownMenuItem<String>>((String value) {
    //     return DropdownMenuItem<String>(
    //       value: value,
    //       child: Text(value),
    //     );
    //   }).toList(),
    // );
    return SizedBox(
      height: 210,

    child: Card(
      color: Colors.green,
      child: Column(
        children: [
          ListTile(
            title: Text('1625 Main Street',
                style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('My City, CA 99984'),
            leading: Icon(
              Icons.restaurant_menu,
              color: Colors.blue[500],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('(408) 555-1212',
                style: TextStyle(fontWeight: FontWeight.w500)),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.blue[500],
            ),
          ),
          ListTile(
            title: Text('costa@example.com'),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.blue[500],
            ),
          ),
        ],
      ),
    ),
    );
  }
}
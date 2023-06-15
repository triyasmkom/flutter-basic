import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController myController =
        TextEditingController(text: 'Initial');
    String result = '';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field'),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: myController,
                // onChanged: (value) {
                //   print(value);
                // },

                onSubmitted: (value) {
                  print(value);
                  setState(() {
                    result = value;
                  });
                },

                onEditingComplete: () {
                  print('Edit Sukses');
                },
              ),
              Text('Hasil Input: $result')
            ],
          ),
        )),
      ),
    );
  }
}

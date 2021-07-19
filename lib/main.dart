import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DatePicker",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datepicker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2001),
                  lastDate: DateTime(2222),
                ).then((date){
                  setState(() {
                    now = date!;
                  });
                });
              },
              icon: Icon(
                Icons.calendar_today,
                size: 60,
              ),
            ),
            SizedBox(height: 40,),
            Text("${now.year.toString()}-${now.month.toString().padLeft(2,'0')}-${now.day.toString().padLeft(2,'0')} ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)
          ],
        ),
      ),
    );
  }
}

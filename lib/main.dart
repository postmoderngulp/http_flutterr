import 'package:flutter/material.dart';
import 'package:http_flutterr/data_service.dart';

void main() {
  runApp(MaterialApp(
    home: Ui(),
  ));
}

class Ui extends StatefulWidget {
  @override
  State<Ui> createState() => _UiState();
}
data_service data = data_service();
class _UiState extends State<Ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                child: ElevatedButton(
                  child: Text("press"),
                  onPressed: () async {
                    setState(() {
                      data.makeRequestToApi();
                    });
                  },
                ),
              )
            ],
          ),
        ),

    );
  }
}

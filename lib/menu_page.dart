import 'package:flutter/material.dart';
import 'package:flutter_application_1/tugas_cupertino.dart';
import 'package:flutter_application_1/tugas_material.dart';
import 'package:flutter_application_1/tugas_stateful.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas Pemograman"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => TugasMaterial(),
                    ),
                  );
                },
                child: Text("Tugas Material"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, minimumSize: Size(200, 32)),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => TugasCupertino(),
                    ),
                  );
                },
                child: Text("Tugas Cupertino"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, minimumSize: Size(200, 32)),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => TugasStateful(),
                    ),
                  );
                },
                child: Text("Tugas Stateful Widget"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, minimumSize: Size(200, 32)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

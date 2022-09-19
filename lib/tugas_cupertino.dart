import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TugasCupertino extends StatelessWidget {
  const TugasCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas Cupertino"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoTextField(
                placeholder: "Username",
                prefix: Icon(CupertinoIcons.person),
              ),
              SizedBox(
                height: 16,
              ),
              CupertinoTextField(
                placeholder: "Password",
                prefix: Icon(CupertinoIcons.lock),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 40.0),
                      child: CupertinoButton(
                          color: Colors.green,
                          child: Text("Masuk"),
                          onPressed: () {}),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

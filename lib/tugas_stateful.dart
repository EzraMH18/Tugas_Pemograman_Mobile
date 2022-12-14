import 'package:flutter/material.dart';

class TugasStateful extends StatefulWidget {
  const TugasStateful({Key? key}) : super(key: key);

  @override
  State<TugasStateful> createState() => _TugasStatefulState();
}

class _TugasStatefulState extends State<TugasStateful> {
  var _formKey = GlobalKey<FormState>();
  var _controllerUserName = TextEditingController();
  var _controllerPassword = TextEditingController();

  var _gender = "Laki - Laki";

  List<String> _activity = [
    "BEM",
    "UKM",
    "LPM",
  ];

  List<String> _selectDays = [];

  var _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Isi Data Diri Mahasiswa",
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text(
              "Masukkan Username dan Password",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _textField(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Masukkan Nama Lengkap",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _textFormField(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Jenis Kelamin",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _radio(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Aktivitas",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _checkBox(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Status",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _switch(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Fakultas",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => openModalBootmSheet(),
            child: Text(
              'Daftar Fakultas',
            ),
            style: ElevatedButton.styleFrom(primary: Colors.green),
          ),
        ],
      ),
    );
  }

  ListTile _switch() {
    return ListTile(
      onTap: () => setState(() => _darkMode = !_darkMode),
      title: Text("Aktif"),
      trailing: Switch(
        value: _darkMode,
        onChanged: (value) => setState(() => _darkMode = value),
      ),
    );
  }

  Column _checkBox() {
    return Column(
        children: List.generate(_activity.length, (index) {
      String day = _activity[index];
      return CheckboxListTile(
        title: Text(day),
        value: _selectDays.contains(day),
        activeColor: Colors.green,
        onChanged: (value) {
          if (value!) {
            _selectDays.add(day);
          } else {
            _selectDays.remove(day);
          }
          setState(() {});
          print(_selectDays);
        },
      );
    }));
  }

  Column _radio() {
    return Column(
      children: [
        ListTile(
          onTap: () => setState(() => _gender = 'Laki - Laki'),
          leading: Radio(
            value: "Laki - Laki",
            groupValue: _gender,
            onChanged: (value) {
              setState(() => _gender = value.toString());
            },
          ),
          title: Text("Laki-laki"),
        ),
        ListTile(
          onTap: () => setState(() => _gender = 'Perempuan'),
          leading: Radio(
            value: "Perempuan",
            groupValue: _gender,
            onChanged: (value) {
              setState(() => _gender = value.toString());
            },
          ),
          title: Text("Perempuan"),
        ),
      ],
    );
  }

  Padding _textFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              // validator: (value) => value == '' ? "Dont Empty" : null,
              controller: _controllerUserName,
              decoration: InputDecoration(labelText: 'Nama Lengkap'),
            ),
          ],
        ),
      ),
    );
  }

  Padding _textField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          TextField(
            //obscureText: true,
            controller: TextEditingController(),
            decoration: const InputDecoration(
              labelText: "Username",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            obscureText: true,
            controller: TextEditingController(),
            decoration: const InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              prefixIcon: Icon(Icons.vpn_key),
              suffixIcon: Icon(Icons.visibility),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                print(_controllerPassword.text);
                //.......
              }
            },
            child: Text(
              "Submit",
            ),
            style: ElevatedButton.styleFrom(primary: Colors.green),
          ),
        ],
      ),
    );
  }

  void openModalBootmSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              const Divider(
                thickness: 3,
                color: Colors.green,
                indent: 150,
                endIndent: 150,
              ),
              ListTile(
                title: Text("Daftar Fakultas"),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 40,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        title: Text("Fakultas $index"),
                      );
                    }),
              )
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:counter_7/model/budget.dart';
import 'package:counter_7/page/drawer.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();

  String _judul = "";
  int _nominal = 0;
  String? _tipe;
  DateTime? _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ),
      drawer: const NavigationDrawer(),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Contoh: Beli Sate Pacil",
                    labelText: "Judul",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _judul = value!;
                    });
                  },
                  onSaved: (String? value) {
                    setState(() {
                      _judul = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Data tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Contoh: 15000",
                    labelText: "Nominal",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (String? value) {
                    setState(() {
                      if (value == null || value.isEmpty) {
                        _nominal = 0;
                      } else {
                        _nominal = int.parse(value);
                      }
                    });
                  },
                  onSaved: (String? value) {
                    setState(() {
                      if (value == null || value.isEmpty) {
                        _nominal = 0;
                      } else {
                        _nominal = int.parse(value);
                      }
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Data tidak boleh kosong!';
                    }
                    if (int.parse(value) == 0) {
                      return 'Data tidak boleh nol!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton(
                  value: _tipe,
                  hint: const Text("Pilih tipe"),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: const <DropdownMenuItem<String>>[
                    DropdownMenuItem<String>(
                      value: 'Pemasukan',
                      child: Text('Pemasukan'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Pengeluaran',
                      child: Text('Pengeluaran'),
                    ),
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      _tipe = value ?? "";
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 4.0),
                    TextButton(
                      onPressed: (() {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2999),
                        ).then((value) {
                          setState(() {
                            _date = value;
                          });
                        });
                      }),
                      child: Text(
                        _date.toString().split(' ')[0],
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Budget.addBudget(
                        judul: _judul,
                        nominal: _nominal,
                        tipe: _tipe,
                        date: _date,
                      );
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 15,
                            child: ListView(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20.0,
                                vertical: 16.0,
                              ),
                              shrinkWrap: true,
                              children: [
                                Center(
                                  child: Text(
                                    "Berhasil menambahkan $_tipe $_judul sebesar ${_nominal.toString()}\n",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Kembali'),
                                )
                              ],
                            ),
                          );
                        },
                      );
                      _formKey.currentState!.reset();
                    }
                  },
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(12.0)),
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

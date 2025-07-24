import 'package:belajar_flutter/helpers/size_helper.dart';
import 'package:belajar_flutter/belajar_form/form_output_screen.dart';
import 'package:belajar_flutter/belajar_form/form_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BelajarForm extends StatefulWidget {
  const BelajarForm({super.key});

  @override
  State<BelajarForm> createState() => BelajarFormState();
}

class BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();

  final namaController = TextEditingController();
  final jkController = TextEditingController();
  final tglLahirController = TextEditingController();
  String? pilihAgama;

  final List<String> agama = [
    "Islam",
    "Protestan",
    "Katolik",
    "Budha",
    "Atheis"
  ];

  @override
  void initState() {
    super.initState();
    tglLahirController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulir Biodata"),
        centerTitle: true,
        backgroundColor: Colors.teal.withOpacity(0.8),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const Text(
                          "Formulir Biodata",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Nama
                        TextFormField(
                          controller: namaController,
                          decoration: const InputDecoration(
                            hintText: "Nama Lengkap",
                            labelText: "Nama",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) =>
                              (value == null || value.isEmpty)
                                  ? 'Input Nama'
                                  : null,
                        ),
                        const SizedBox(height: 18),

                        // Jenis Kelamin
                        TextFormField(
                          controller: jkController,
                          decoration: const InputDecoration(
                            hintText: "Jenis Kelamin",
                            labelText: "Jenis Kelamin",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) =>
                              (value == null || value.isEmpty)
                                  ? 'Input Jenis Kelamin'
                                  : null,
                        ),
                        const SizedBox(height: 18),

                        // Tanggal Lahir
                        TextFormField(
                          controller: tglLahirController,
                          readOnly: true,
                          decoration: const InputDecoration(
                            hintText: "Tanggal Lahir",
                            labelText: "Tanggal Lahir",
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(Icons.calendar_today),
                          ),
                          validator: (value) =>
                              (value == null || value.isEmpty)
                                  ? 'Input Tanggal Lahir'
                                  : null,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                            );
                            if (pickedDate != null) {
                              String tgl = DateFormat('yyyy-MM-dd')
                                  .format(pickedDate);
                              setState(() {
                                tglLahirController.text = tgl;
                              });
                            }
                          },
                        ),
                        const SizedBox(height: 18),

                        // Agama
                        DropdownButtonFormField<String>(
                          value: pilihAgama,
                          decoration: const InputDecoration(
                            hintText: "Agama",
                            labelText: "Pilih Agama",
                            border: OutlineInputBorder(),
                          ),
                          items: agama.map((String item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              pilihAgama = value;
                            });
                          },
                          validator: (value) =>
                              value == null || value.isEmpty
                                  ? 'Pilih Agama'
                                  : null,
                        ),
                        const SizedBox(height: 24),

                        // Tombol Simpan
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            onPressed: _submit,
                            child: const Text(
                              "Simpan",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutputFormScreen(
            nama: namaController.text,
            jk: jkController.text,
            tglLahir: tglLahirController.text,
            agama: pilihAgama!,
          ),
        ),
      );
    }
  }
}

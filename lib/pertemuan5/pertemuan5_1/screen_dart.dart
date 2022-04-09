import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan5/pertemuan5_1/logic_provider.dart';
import 'package:provider/provider.dart';

class cekstate extends StatefulWidget {
  cekstate({Key? key}) : super(key: key);

  @override
  State<cekstate> createState() => _cekstateState();
}

class _cekstateState extends State<cekstate> {
  bool? checkitem = false;
  String jawaban = '';
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<LogicProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Checkbox(
                value: checkitem,
                onChanged: (val) {
                  setState(() {
                    checkitem = val;
                    print(val);
                  });
                }),
            // checkboxwith provider
            Checkbox(
                value: prov.IsChecked,
                onChanged: (val) {
                  print(val);
                  prov.setstatuscode = val;
                }),

            Radio(
                value: 'Samsung',
                groupValue: jawaban,
                onChanged: (nilai) {
                  setState(() {
                    jawaban = nilai.toString();
                  });
                })
          ],
        ),
      ),
    );
  }
}

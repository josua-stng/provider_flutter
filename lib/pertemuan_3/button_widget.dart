import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan_3/widgets/text_field_widget.dart';

class Pertemuan03Screen extends StatelessWidget {
  const Pertemuan03Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Todos')),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Icon(Icons.list_alt),
                    Text("Kegiatan"),
                    Container(
                      margin: EdgeInsets.only(left: 70),
                      child: SizedBox(
                        width: 280,
                        child: TextFieldJosua(isibox: 'Judul Kegiatan'),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Row(
                  children: [Icon(Icons.format_align_left), Text('Keterangan')],
                ),
              ),
              Container(
                  width: 400,
                  margin: EdgeInsets.only(left: 60),
                  child: TextFieldJosua(isibox: 'Keterangan')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 150,
                    child: Row(
                      children: [
                        Icon(Icons.calendar_month_rounded),
                        Text("Tanggal Mulai"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 70),
                    child: Row(children: [
                      Icon(Icons.calendar_month_outlined),
                      Text("Tanggal Selesai")
                    ]),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 40, top: 20),
                      child: SizedBox(
                        width: 200,
                        child: TextFieldJosua(isibox: 'none'),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: 200,
                        child: TextFieldJosua(isibox: 'none'),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20,right: 20),
                    child: SizedBox(
                      width: 200,
                      height: 40,
                      child: OutlinedButton(
                          onPressed: () {}, child: Text('Batal')),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: 200,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Kirim')),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

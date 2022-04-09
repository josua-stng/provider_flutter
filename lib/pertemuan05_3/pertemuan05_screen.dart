import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan05_3/pertemuan05_provider.dart';
import 'package:provider/provider.dart';

class Pertemuan05Screen extends StatefulWidget {
  Pertemuan05Screen({Key? key}) : super(key: key);

  @override
  State<Pertemuan05Screen> createState() => _Pertemuan05ScreenState();
}

class _Pertemuan05ScreenState extends State<Pertemuan05Screen> {
  //Status soal 1
  bool? soal1a = false;
  bool? soal1b = false;

  //Status soal 2
  String soal2 = 'answ';

  //Status pilih kelas
  bool kelasPagi = false;
  bool kelasSiang = false;

  @override
  Widget build(BuildContext context) {
    // class ini menggunakan provider Pertemuan05Provider
    final prov = Provider.of<Pertemuan05Provider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan 05'),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Soal 1: Menggunakan Checkbox
                const Text(
                    '1. Memori yang berfungsi untuk tempat penyimpanan data sementara disebut..'),
                Row(
                  children: [
                    Text('a.'),
                    SizedBox(width: 5),
                    Checkbox(
                      value: soal1a,
                      onChanged: (val) {
                        setState(() {
                          soal1a = val;
                        });
                      },
                    ),
                    Text('RAM'),
                  ],
                ),
                Row(
                  children: [
                    Text('b.'),
                    SizedBox(width: 5),
                    Checkbox(
                      value: soal1b,
                      onChanged: (val) {
                        setState(() {
                          soal1b = val;
                        });
                      },
                    ),
                    Text('Random Access Memory'),
                  ],
                ),

                //Respon jawaban soal1
                if (soal1a == false && soal1b == false)
                  Container()
                else if (soal1a == true && soal1b == true)
                  const Text(
                    'Benar!',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  )
                else
                  const Text(
                    'Jawaban masih salah, coba lagi',
                    style: TextStyle(color: Colors.red),
                  ),

                const Divider(),
                //Soal 2: Menggunakan Checkbox
                const Text('2.Skema desain pembangunan jaringan disebut..'),
                Row(
                  children: [
                    Text('a.'),
                    SizedBox(width: 5),
                    Radio(
                      value: 'topologi',
                      groupValue: soal2,
                      onChanged: (val) {
                        setState(() {
                          soal2 = 'topologi';
                        });
                      },
                    ),
                    Text('Topologi'),
                  ],
                ),
                Row(
                  children: [
                    Text('b.'),
                    SizedBox(width: 5),
                    Radio(
                      groupValue: soal2,
                      value: 'desain jaringan',
                      onChanged: (val) {
                        setState(() {
                          soal2 = 'desain jaringan';
                        });
                      },
                    ),
                    Text('Desain Jaringan'),
                  ],
                ),

                //CheckJawaban
                if (soal2 == 'answ')
                  Container()
                else if (soal2 == 'topologi')
                  const Text(
                    'Benar!',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  )
                else
                  const Text(
                    'Jawaban masih salah, coba lagi',
                    style: TextStyle(color: Colors.red),
                  ),
                //Chips
                //ChoiceChip
                const Divider(),
                const Text('Feedback Soal',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const Text('Kelas'),
                Row(
                  children: [
                    ChoiceChip(
                      label: Text('Pagi'),
                      selectedColor: Colors.blue[200],
                      selected: kelasPagi,
                      onSelected: (val) {
                        setState(() {
                          kelasPagi = val;
                        });
                      },
                    ),
                    const SizedBox(width: 5),
                    ChoiceChip(
                      label: Text('Siang'),
                      selectedColor: Colors.blue[200],
                      selected: kelasSiang,
                      onSelected: (val) {
                        setState(() {
                          kelasSiang = val;
                        });
                      },
                    ),
                  ],
                ),
                const Text('Soal di atas telah dipelajari saat?..'),
                Row(
                  children: [
                    FilterChip(
                      label: Text('Sekolah'),
                      //Atur color disini
                      selectedColor: Colors.blue[200],
                      selected: prov.statusSekolah,
                      onSelected: (val) {
                        prov.setSekolah = val;
                      },
                    ),
                    const SizedBox(width: 5),
                    FilterChip(
                      label: Text('Praktikum'),
                      selectedColor: Colors.red,
                      selected: prov.statusPraktik,
                      onSelected: (val) {
                        prov.setPraktik = val;
                      },
                    ),
                    const SizedBox(width: 5),
                    FilterChip(
                      label: Text('Kursus'),
                      selectedColor: Colors.blue,
                      selected: prov.statusKursus,
                      onSelected: (val) {
                        prov.setKursus = val;
                      },
                    ),
                  ],
                ),

                //InputChip
                const Text('Peminatan saat sekolah?'),
                if(prov.ListChipTerpilih.isNotEmpty)
                Container(
                  height: 50,
                 margin: EdgeInsets.only(top: 5,bottom: 10),
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   border: Border.all(color: Colors.black),
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.grey
                 ),
                  child: 
                  Row(
                    children: prov.ListChipTerpilih.map((i){
                      return Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              i,
                              style: TextStyle(color: Colors.yellow)),
                            
                          ),
                          SizedBox(
                            width:7 ,
                          )
                        ],
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    InputChip(
                      label: Text('TKJ'),
                      selectedColor: Colors.blue,
                      selected: prov.statusTKJ,
                      onSelected: (val) {
                        prov.setTKJ = val;
                        prov.checkcips(val, 'TKJ');
                      },
                    ),
                    SizedBox(width: 5),
                    InputChip(
                      label: Text('RPL'),
                      selectedColor: Colors.blue,
                      selected: prov.statusRPL,
                      onSelected: (val) {
                        prov.setRPL = val;
                        prov.checkcips(val, 'RPL');
                      },
                    ),
                    SizedBox(width: 5),
                    InputChip(
                      label: Text('SMA'),
                      selectedColor: Colors.blue,
                      selected: prov.statusSMA,
                      onSelected: (val) {
                        prov.setSMA = val;
                        prov.checkcips(val, 'SMA');
                      },
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}

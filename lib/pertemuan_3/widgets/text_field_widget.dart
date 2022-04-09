import 'package:flutter/material.dart';

class TextFieldJosua extends StatelessWidget {
  String isibox;

  TextFieldJosua({Key? key, required this.isibox}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isibox == 'Judul Kegiatan') {
      return TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Judul Kegiatan'
        ),
        
      );
    } else if (isibox == 'Keterangan') {
      return TextField(
        maxLines: 3,
       
       decoration: InputDecoration(
         border: OutlineInputBorder(),
         hintText: 'Keterangan'
       ),
      );
    } else {
      return TextFormField(
         textAlign: TextAlign.center,
       decoration: InputDecoration(
         hintText: '23-03-22'
       ),
      );
    }

    // return TextField(
    //   decoration: InputDecoration(
    //     labelText: title,
    //     prefixIcon: title == 'Umur' ? Icon(icon) : null,
    //   ),
    // );
  }
}

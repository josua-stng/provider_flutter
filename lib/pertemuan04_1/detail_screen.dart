import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan04_1/beranda.dart';

class buttonPush extends StatefulWidget {
  buttonPush({Key? key}) : super(key: key);

  @override
  State<buttonPush> createState() => _nameState();
}

class _nameState extends State<buttonPush> {
  TextEditingController username = TextEditingController();
  TextEditingController userpass = TextEditingController();

  @override
  void initState() {
    username.text = 'Josua';
    userpass.text='12345';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Josua'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          // Form
          TextField(
            controller: username,
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
          TextField(
            controller: userpass,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),

          //Button Login
          ElevatedButton(
              onPressed: () {
                // Kirim username ke halaman yang dituju
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            berandaPage(username: username.text)));
              },
              child: Text('Submit'))
        ]),
      ),
    );
  }
}

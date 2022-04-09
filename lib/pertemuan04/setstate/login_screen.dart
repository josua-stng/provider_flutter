import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan04/provider/produk2_screen.dart';
import 'package:flutter_application_1/pertemuan04/provider/produk_provider.dart';
import 'package:flutter_application_1/pertemuan04/setstate/produk_screen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Contoh LocalVariabel
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String loginText = "Login";
  double defaultPadding = 20;

  //status username dan password kosong!
  bool? isUsernameEmpty;
  bool? isPasswordEmpty;

  @override
  void initState() {
    //Contoh inisialisasi default state. Nilai ini akan tampil saat pertama kali aplikasi run.
    usernameController.text = 'Mikroskil';
    isUsernameEmpty = false;
    isPasswordEmpty = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(loginText),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          height: MediaQuery.of(context).size.height,
          child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                //Spacer widget seperti flex untuk mengatur jarak antara widget di flex container, column, atau row.
                const Spacer(),

                //LoginForm
                SizedBox(
                    child: Column(
                  children: [
                    TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                          label: const Text('username'),
                          errorText: isUsernameEmpty == true
                              ? 'username harus diisi'
                              : null),
                    ),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          label: const Text('password'),
                          errorText: isPasswordEmpty == true
                              ? 'Kata sandi harus diisi'
                              : null),
                    ),
                  ],
                )),
                SizedBox(height: defaultPadding),

                //LoginButton
                ElevatedButton(
                  onPressed: () {
                    //contoh validasi jika username dan password empty maka tampilkan pesan error
                    if (usernameController.text.isEmpty) {
                      setState(() {
                        isUsernameEmpty = true;
                      });
                    }
                    if (passwordController.text.isEmpty) {
                      setState(() {
                        isPasswordEmpty = true;
                      });
                    }
                    //Jika tidak ada kesalahan navigasi ke halaman produk
                    else {
                      setState(() {
                        isUsernameEmpty = false;
                        isPasswordEmpty = false;
                      });
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          //passing data to another screen
                          return ProdukScreen(
                              username: usernameController.text);
                        },
                      ));
                    }
                  },
                  child: Text(loginText),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                          MediaQuery.of(context).size.width / 2 + 100, 50)),
                ),

                SizedBox(height: defaultPadding),
                const Divider(),
                const Text(
                  'Klik tomboh di bawah untuk contoh menggunakan Provider',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.black45),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ProdukScreen2())));
                  },
                  child: Text('Provider'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      minimumSize: Size(
                          MediaQuery.of(context).size.width / 2 + 100, 50)),
                ),

                const Spacer(),
              ])),
        ),
      ),
    );
  }
}

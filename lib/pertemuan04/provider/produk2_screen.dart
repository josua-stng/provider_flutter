import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan04/provider/produk_provider.dart';
import 'package:flutter_application_1/pertemuan04/setstate/components/produk_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/pertemuan04/provider/keranjang2_screen.dart';
class ProdukScreen2 extends StatelessWidget {
  const ProdukScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(context.read<ProdukProvider>().titleScreen),
          actions: [
            Stack(children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Keranjang2())));
                },
              ),

              //keranjang belanja
              Positioned(
                  child: Text(
                context.watch<ProdukProvider>().keranjang.length.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ))
            ]),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          ProdukWidget(
            namaProduk: 'Tas',
            ctrl: context.watch<ProdukProvider>().tasCtrl,
            status: context.watch<ProdukProvider>().isTasAdd,
            press: () {
              print('Tas');
              context.read<ProdukProvider>().setTasStatus = true;
              context.read<ProdukProvider>().isiKeranjang = {
                "title": 'Tas',
                "total": context.read<ProdukProvider>().tasCtrl.text
              };
            },
          ),
        ]),
      ),
    );
  }
}

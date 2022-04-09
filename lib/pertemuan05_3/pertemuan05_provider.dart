import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Pertemuan05Provider extends ChangeNotifier {
  // status soal telah dipelajari saat?

  // Initialisasi nilai awal
  bool _diSekolah = false;
  bool _diPraktik = false;
  bool _diKursus = false;
  bool _diTKJ = false;
  bool _diRPL = false;
  bool _diSMA = false;

  // Ini akan return nilai dari disekolah, dipraktik, dst. Ingat konsep OOP setter || getter
  bool get statusSekolah => _diSekolah;
  bool get statusPraktik => _diPraktik;
  bool get statusKursus => _diKursus;
  bool get statusTKJ => _diTKJ;
  bool get statusRPL => _diRPL;
  bool get statusSMA => _diSMA;

  // Perubahan state, ingat konsep Listen pada StateManajemen
  set setSekolah(val) {
    _diSekolah = val;
    notifyListeners();
  }

  set setPraktik(val) {
    _diPraktik = val;
    notifyListeners();
  }

  set setKursus(val) {
    _diKursus = val;
    notifyListeners();
  }

  set setTKJ(val) {
    _diTKJ = val;
    notifyListeners();
  }

  set setRPL(val) {
    _diRPL = val;
    notifyListeners();
  }

  set setSMA(val) {
    _diSMA = val;
    notifyListeners();
  }

// Check item terpilih
  final List _ListChipTerpilih = [];
  List get ListChipTerpilih => _ListChipTerpilih;

  set isiList(val) {
    _ListChipTerpilih.add(val);
    notifyListeners();
  }
  void hapuslist(val){
    _ListChipTerpilih.removeWhere((item) => item==val);
    notifyListeners();
  }
  void checkcips(val,txt){
    if(val ==false){
      hapuslist(txt);
    }else{
      isiList=txt;
    }
  }
}

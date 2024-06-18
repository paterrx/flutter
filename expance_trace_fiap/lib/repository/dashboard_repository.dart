import 'dart:io';
import 'package:flutter/material.dart';

class DashboardRepository {
  final Map<String, ImageProvider> imagens = {
    '001': FileImage(File('images/bb.png')),
    '002': FileImage(File('images/bmg.png')),
    '003': FileImage(File('images/bradesco.png')),
    '004': FileImage(File('images/c6bank.png')),
    '005': FileImage(File('images/caixa.png')),
    '006': FileImage(File('images/inter.png')),
    '007': FileImage(File('images/itau.png')),
    '008': FileImage(File('images/neon.png')),
    '009': FileImage(File('images/nubank.png')),
    '010': FileImage(File('images/original.png')),
    '011': FileImage(File('images/pan.png')),
    '012': FileImage(File('images/picpay.png')),
    '013': FileImage(File('images/santander.png')),
    '014': FileImage(File('images/sofisa.png')),
    // Adicione mais mapeamentos conforme necessário
  };
}

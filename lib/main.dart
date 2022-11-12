import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pass_data_btwscrns_assignment/productscreen.dart';

import 'SIngle.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const ProductList(),
    routes: {"Single" : (context) => const Singleproduct()},
  ));
}

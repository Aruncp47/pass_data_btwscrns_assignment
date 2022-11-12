import 'package:flutter/material.dart';
import 'package:pass_data_btwscrns_assignment/dummy.dart';

class Singleproduct extends StatelessWidget {
  const Singleproduct({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final product = dummyproducts.firstWhere((element) => element["id"] == id);
    return Scaffold(
        appBar: AppBar(title: Text(product["name"])),
        body: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(product["image"]),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(product["name"],
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('₹${product["price"]}'.toString(),
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Descrption : ${product["description"]}",
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            )
          ],
        ));
  }
}

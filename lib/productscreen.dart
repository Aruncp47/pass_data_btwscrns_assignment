
import 'package:flutter/material.dart';
import 'package:pass_data_btwscrns_assignment/dummy.dart';


class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);
  void gotosingle(context, id){
    Navigator.pushNamed(context, "Single",arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 250),
          children: dummyproducts.map((product) {
            return GestureDetector(
              onTap: () {
                gotosingle(context, product["id"]);
              },
              child: Card(elevation: 3,
                child: Column(
                  children: [
                    Flexible(
                      flex: 4,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(product["image"]))),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                          Text(product["name"],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                          Text('₹${product["price"]}'.toString(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 17))
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/product.dart';
import './product_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Product> products = [
    Product(
      id: '1',
      name: 'Pixel',
      description: 'Pixel is the most featureful phone ever',
      price: 800,
      color: '4285F4',
      isStarred: false,
    ),
    Product(
      id: '2',
      name: 'Laptop',
      description: 'Laptop is most productive development tool',
      price: 2000,
      color: '34A853',
      isStarred: false,
    ),
    Product(
      id: '3',
      name: 'Tablet',
      description: 'Tablet is the most useful device ever for meeting',
      price: 1500,
      color: 'FBBC05',
      isStarred: true,
    ),
    Product(
      id: '4',
      name: 'Pen Drive',
      description: 'iPhone is the stylist phone ever',
      price: 100,
      color: 'EA4335',
      isStarred: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Navigation',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: product),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Color(int.parse('0xFF${product.color}')),
                    alignment: Alignment.center,
                    child: Text(
                      product.name.toLowerCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(product.description),
                          const SizedBox(height: 8),
                          Text('Price: ${product.price}'),
                          Row(
                            children: List.generate(
                              3,
                              (index) => Icon(
                                product.isStarred
                                    ? Icons.star
                                    : Icons.star_border,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

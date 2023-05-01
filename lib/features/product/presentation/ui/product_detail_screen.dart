import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetailScreen extends StatefulWidget {
  final int id;
  const ProductDetailScreen({ required this.id, Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Product Detail : ${widget.id}'),
            ElevatedButton.icon(
              onPressed: () {
                GoRouter.of(context).push('/productDetail/100/details');
              },
              icon: const Icon(Icons.next_plan),
              label: const Text('Product Detail 101'),
            )

          ],
        ),
      ),
    );
  }
}
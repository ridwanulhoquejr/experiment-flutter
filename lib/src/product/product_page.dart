import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Product Page',
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/customer');
              },
              child: const Text('Go to Customer Page'),
            ),
          ],
        ),
      ),
    );
  }
}

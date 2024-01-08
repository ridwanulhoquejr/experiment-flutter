import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Order Page',
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/product');
              },
              child: const Text('Go to Product Page'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:catalog_state_management/core/routes/app_route.dart';
import 'package:catalog_state_management/features/cart/domain/entities/product.dart';
import 'package:catalog_state_management/features/cart/presentation/widgets/add_button_widget.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(id: '1', name: 'Espresso', price: '18000'),
      Product(id: '2', name: 'Cappuccino', price: '25000'),
      Product(id: '3', name: 'Caramel Latte', price: '28000'),
      Product(id: '4', name: 'Matcha Latte', price: '27000'),
      Product(id: '5', name: 'French Fries', price: '20000'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Kafe', style: TextStyle(color: Colors.white,),),
        centerTitle: true,
        backgroundColor: Colors.brown,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white,),
            onPressed: () => Navigator.pushNamed(context, AppRoute.cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            trailing: AddButtonWidget(product: products[index]),
          );
        },
      ),
    );
  }
}

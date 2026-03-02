import 'package:catalog_state_management/features/cart/domain/entities/product.dart';
import 'package:catalog_state_management/features/cart/presentation/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddButtonWidget extends StatelessWidget {
  final Product product;
  const AddButtonWidget({required this.product, super.key});
  @override
  Widget build(BuildContext context) {
    final isInCart = context.select<CartProvider, bool>(
      (provider) => provider.isInCart(product.id),
    );
    return TextButton(
      onPressed: isInCart
          ? null
          : () => context.read<CartProvider>().addItem(product),
      child: isInCart
          ? const Icon(Icons.check_box, color: Colors.green)
          : const Text('tambah'),
    );
  }
}
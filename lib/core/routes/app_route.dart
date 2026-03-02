import 'package:catalog_state_management/features/cart/presentation/pages/cart_page.dart';
import 'package:catalog_state_management/features/cart/presentation/pages/catalog_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const String catalog = '/';
  static const String cart = '/cart';

  static Map<String, WidgetBuilder> get routes => {
    catalog: (context) => CatalogPage(),
    cart: (context) => CartPage(),
  };
}
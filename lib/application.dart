import 'package:edu_routes_demo/widgets/checkout_screen.dart';
import 'package:edu_routes_demo/widgets/product_details_screen.dart';
import 'package:edu_routes_demo/widgets/products_screen.dart';
import 'package:edu_routes_demo/widgets/profile_screen.dart';
import 'package:edu_routes_demo/widgets/settings_screen.dart';
import 'package:flutter/material.dart';
import "./widgets/home_screen.dart";

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) {
          return const HomeScreen();
        },
        "/products": (context) {
          return const ProductsScreen();
        },
        "/product-details": (context) {
          return const ProductDetailsScreen();
        },
        "/profile": (context) {
          return const ProfileScreen();
        },
        "/settings": (context) {
          return const SettingsScreen();
        },
        "/checkout": (context) {
          return const CheckoutScreen();
        }
      },
    );
  }
}

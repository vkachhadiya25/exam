import 'package:exam/screen/cart/view/cart_screen.dart';
import 'package:exam/screen/details/view/detail_screen.dart';
import 'package:exam/screen/home/view/home_screen.dart';
import 'package:exam/screen/splesh/view/splesh_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String,WidgetBuilder> appRoues =
{
  '/' : (context) => const SpleshScreen(),
  'home' : (context) => const HomeScreen(),
  'detail' : (context) => const DetailScreen(),
  'cart' : (context) => const CartScreen(),
};
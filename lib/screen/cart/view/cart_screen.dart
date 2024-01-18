import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/home_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;

  @override
  Widget build(BuildContext context) {
    // HomeModel g1 = ModalRoute.of(context)!.settings.arguments as HomeModel;
    providerr = context.read<HomeProvider>();
    providerw = context.watch<HomeProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Cart Screen"),
          backgroundColor: Colors.amber.shade100,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.13,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/image/image.png",
                          fit: BoxFit.cover,
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "data",
                          style: TextStyle(fontSize: 20),
                        ),
                        const Spacer(),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.cancel))
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:exam/screen/home/model/home_model.dart';
import 'package:exam/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;

  @override
  Widget build(BuildContext context) {
    HomeModel g1 = ModalRoute.of(context)!.settings.arguments as HomeModel;
    providerr = context.read<HomeProvider>();
    providerw = context.watch<HomeProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("${g1.category}"),
          actions: [
            IconButton(
              onPressed: () {
                providerw!.addData!.add(providerw!.selcatedvalue);
                Navigator.pushNamed(context, 'cart');
              },
              icon: const Icon(Icons.shopping_cart),
            )
          ],
          backgroundColor: Colors.amber.shade200,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.network(
                  "${g1.image}",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "${g1.ratingModel!.rate} Rate",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.filter_1)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.color_lens_outlined)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart)),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      "${g1.title}.",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "${g1.description}.",
                  style: const TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.08,
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Count = ${g1.ratingModel!.count}",
                            style: const TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.08,
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Price = ${g1.price}",
                            style: const TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

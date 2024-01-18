import 'package:exam/screen/home/model/home_model.dart';
import 'package:exam/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<HomeProvider>().getAPI();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<HomeProvider>();
    providerw = context.watch<HomeProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          centerTitle: true,
          title: const Text("Shopping"),
          actions: const [
            Icon(Icons.settings),
          ],
          backgroundColor: Colors.amber.shade200,
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SearchBar(
                leading: Icon(Icons.search),
                hintText: "Search items",
                trailing: [Icon(Icons.cancel)],
                shadowColor: null,
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: providerw!.dataList!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 260,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        HomeModel g1 = providerr!.dataList![index];
                        Navigator.pushNamed(context, 'detail', arguments: g1);
                      },
                      child: Container(
                        height: MediaQuery.sizeOf(context).height * 0.3,
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2,color: Colors.white)
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.network(
                                "${providerr!.dataList![index].image}",
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${providerr!.dataList![index].category}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        backgroundColor: Colors.amber.shade200,
      ),
    );
  }
}

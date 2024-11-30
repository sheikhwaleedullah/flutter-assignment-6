import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:property/detail.dart';

class WishListView extends StatefulWidget {
  const WishListView({super.key});

  @override
  State<WishListView> createState() => _WishListViewState();
}

class _WishListViewState extends State<WishListView> {
  List<String> imageUrls = [
    "assets/list1.PNG",
    "assets/list2.PNG",
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WishList"),
      ),
      body: GridView.builder(
        shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 290,
              crossAxisCount: 1,
              mainAxisSpacing: 50,
              crossAxisSpacing: 50),
          itemCount: 2,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailView()),
                );
              },
              child: SizedBox(
                height: 290,
                width: 200,
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(imageUrls[index]),
                    ),
                    Container(
                      width: 337,
                      height: 100,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Color.fromARGB(255, 14, 49, 70),
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 8.0),
                            child: Row(
                              children: [
                                Text(
                                  "CRAFTSMAN HOUSE",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "520 N Btoudry Ave Los Angeles",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 80.0),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.bookmark_border_outlined,
                                        color: Colors.white)),
                              )
                            ],
                          ),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.bed_outlined,
                                  color: Colors.orange,
                                ),
                              ),
                              Text(
                                "4 Beds",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.bathtub_outlined,
                                  color: Colors.orange,
                                ),
                              ),
                              Text(
                                "4 Baths",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.garage_outlined,
                                  color: Colors.orange,
                                ),
                              ),
                              Text(
                                "1 Garage",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
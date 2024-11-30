import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: SizedBox(
                height: 290,
                width: 400,
                child: Column(
                  children: [
                    Container(
                      child: Image.asset("assets/list1.PNG"),
                    ),
                    Container(
                      width: 337,
                      height: 100,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 8.0),
                            child: Row(
                              children: [
                                Text(
                                  "CRAFTSMAN HOUSE",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
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
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 80.0),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        shape: RoundedRectangleBorder(),
                                        backgroundColor:  Color.fromARGB(255, 14, 49, 70),
                                        content: Text(
                                          "Added To Bookmark",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ));
                                    },
                                    icon: const Icon(
                                        Icons.bookmark_border_outlined,
                                        color: Colors.black)),
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
                                style: TextStyle(color: Colors.black),
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
                                style: TextStyle(color: Colors.black),
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
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                          height: 70,
                          width: 70,
                          child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/avatar.jpg"))),
                      const Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Sheikh Waleed",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Owner of craftman house",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 14, 49, 70),
                            ),
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Call",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Row(
                children: [
                  Text(
                    "Completely redone in 2021. 4 bedrooms.\n2 bathrooms. 1 garahe. amazing curb oppeal\nand enterain areawater\nvews. Tons of built-ins & extras. Read More",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Row(
                children: [
                  Text(
                    "Gallery",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 8),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: Image.asset("assets/r1.PNG"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 8),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: Image.asset("assets/r2.PNG"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 8),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: Image.asset("assets/r3.PNG"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 8),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: Image.asset("assets/r4.PNG"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: SizedBox(
          height: 80,
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Price",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Rs 850000",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 180.0),
                    child: SizedBox(
                        width: 150,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 14, 49, 70)),
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(color: Colors.white),
                            ))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:property/detail.dart';
import 'package:property/wish.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> imageUrls = [
    "assets/list1.PNG",
    "assets/list2.PNG",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.location_on_outlined),
        title: const Text("Los Angles, CA"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WishListView()));
              },
              icon: const Icon(Icons.bookmark_border_outlined,
                  color: Colors.black)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_sharp, color: Colors.black)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 70.0),
              child: Row(
                children: [
                  Text(
                    "Discover Best\nSuitable Property",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor:
                              const Color.fromARGB(255, 14, 49, 70)),
                      onPressed: () {},
                      child: const Text(
                        "House",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: SizedBox(
                    height: 50,
                    width: 125,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor:
                              const Color.fromARGB(255, 14, 49, 70)),
                      onPressed: () {},
                      child: const Text(
                        "Appartment",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor:
                              const Color.fromARGB(255, 14, 49, 70)),
                      onPressed: () {},
                      child: const Text(
                        "Flat",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Row(
                children: [
                  Text(
                    "Best For You",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Center(
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 290,
                      crossAxisCount: 1,
                      mainAxisSpacing: 50,
                      crossAxisSpacing: 50),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
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
                              child: Image.asset("assets/list1.PNG"),
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
                                    padding:
                                        EdgeInsets.only(left: 8.0, top: 8.0),
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
                                        padding:
                                            const EdgeInsets.only(left: 80.0),
                                        child: IconButton(
                                            color: Colors.white,
                                            onPressed: () {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                shape: RoundedRectangleBorder(),
                                                backgroundColor: Color.fromARGB(
                                                    255, 14, 49, 70),
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
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Row(
                children: [
                  Text(
                    "Best For You",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: ListTile(
                      leading: Image.asset(imageUrls[index]),
                      title: const Text("RANCH HOUSE"),
                      subtitle: const Column(
                        children: [
                          Row(
                            children: [Text("520 N Btoudry Ave Los Angeles")],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 0.0),
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
                  );
                }),
          ],
        ),
      ),
    );
  }
}
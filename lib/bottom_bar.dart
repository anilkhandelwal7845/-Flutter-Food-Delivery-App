import 'package:bottomnavigation/back_screen.dart';
import 'package:bottomnavigation/chats_screen.dart';
import 'package:bottomnavigation/darktheme.dart';
import 'package:bottomnavigation/phone_numberscreen.dart';
import 'package:bottomnavigation/readmore_screen.dart';
import 'package:flutter/material.dart';

class NavigationBottomBar extends StatefulWidget {
  const NavigationBottomBar({Key? key}) : super(key: key);

  @override
  State<NavigationBottomBar> createState() => _NavigationBottomBarState();
}

class _NavigationBottomBarState extends State<NavigationBottomBar> {
  

  List<String> abc = [
    "https://tse1.mm.bing.net/th?id=OIP.B0I2r2RZf3xlDa00ZG3ymwHaLw&pid=Api&P=0",
    "https://tse1.mm.bing.net/th?id=OIP.3oW6_bdi88XOj2iuwzp4NgHaHa&pid=Api&P=0",
    'http://www.designindaba.com/sites/default/files/node/news/23566/sonic-burger.jpg',
    "https://tse2.mm.bing.net/th?id=OIP.d-J0Mg3a2azhXSFsImkHygHaFo&pid=Api&P=0"
  ];


  List<String> xyz = ["Cold Drink", "Pizza", "Burger", "Spring Roll"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BackScreen()));
                },
                icon: const Icon(Icons.shopping_cart)),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              accountName: Text('User7845'),
              accountEmail: Text('useraccount7845@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1620322049908-fc2f2265e0ed?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReadMoreScreen()));
              },
              child: const ListTile(
                leading: Icon(Icons.headset_mic_outlined),
                title: Text('Help and Support'),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PhonenumberScreen()));
              },
              child: const ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log out'),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DarkThemeScreen()));
              },
              child: const ListTile(
                leading: Icon(Icons.color_lens_outlined),
                title: Text('Theme'),
              ),
            ),
          ],
        ),
      ),

      // body



      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search...",
                  ),
                ),


                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 20),

                SizedBox(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: abc.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(

                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  height: 50,
                                  width: 100,
                                  child: Image.network(abc[index].toString())),
                              const SizedBox(height: 15),
                              Text(xyz[index]),
                              const SizedBox(height: 15),
                              const CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.arrow_right,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),


                // 2nd container


                const Text(
                  "Popular",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 200 * 5 + 100,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                          ),
                                          Text(' top of the week', style: TextStyle(color: Colors.teal),)
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        "Favourite pizza",
                                        style: TextStyle(
                                          color: Colors.orange,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text(
                                        "Weight: 540g",
                                        style: TextStyle(color: Colors.teal),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 45,
                                        width: 145,
                                        decoration: const BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                                topRight: Radius.circular(20))),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const BackScreen()));
                                          },
                                          child: const Center(
                                              child: Text("+",
                                            style: TextStyle(fontSize: 20),
                                          )),
                                        ),
                                      ),
                                      const Text("  +5.0" , style: TextStyle(color: Colors.teal))
                                    ],
                                  ),
                                ],
                              ),


                              Image.asset('assets/pizza.png')
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),


      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ChatsScreen()));
          },
          child: const Icon(Icons.messenger_outlined)),
    );
  }
}

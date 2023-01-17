import 'package:bottomnavigation/bottom_bar.dart';
import 'package:flutter/material.dart';

class BackScreen extends StatefulWidget {
  const BackScreen({Key? key}) : super(key: key);

  @override
  State<BackScreen> createState() => _BackScreenState();
}

class _BackScreenState extends State<BackScreen> {
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
        title: const Center(child: Text('Your order')),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
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
                            blurRadius: 15.0,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                    ),
                                    Text(' top of the week' , style: TextStyle(color: Colors.teal),)
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
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => const NavigationBottomBar()));
                                    },
                                      child: const Icon(Icons.delete)),
                                ),
                                const Text("  +5.0" , style: TextStyle(color: Colors.teal),)
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
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal.withOpacity(.8),
        child: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NavigationBottomBar()));
            },
            icon: const Icon(Icons.arrow_back)),

      ),
    );
  }
}

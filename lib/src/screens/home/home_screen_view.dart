import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:usell_up/src/screens/home/widgets/best_title_card.dart';
import 'package:usell_up/src/screens/home/widgets/subcategory_card.dart';
import 'package:usell_up/src/screens/home/widgets/top_title.dart';
import 'package:usell_up/src/shared/constants.dart';
import 'package:usell_up/src/screens/home/widgets/category_card.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  var headTilTextStyle = TextStyle(color: Colors.grey.shade700);
  final bestProducts = [
    BestTitleCard(),
    BestTitleCard(),
    BestTitleCard(),
    BestTitleCard(),
    BestTitleCard(),
    BestTitleCard(),
    BestTitleCard(),
    BestTitleCard(),
    BestTitleCard(),
  ];
  final subcatproducts = [
    BestTitleCard(),
    BestTitleCard(),
    BestTitleCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.grey,
                    hintText: "Search"
                ),
              ),
            ),
            Row(

              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.headphones)),
                IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner)),
              ],
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // Row(
                //   children: [
                //     Expanded(
                //       child: TextFormField(
                //         decoration: InputDecoration(
                //           fillColor: Colors.grey,
                //           hintText: "Search"
                //         ),
                //       ),
                //     ),
                //     Row(
                //
                //       children: [
                //         IconButton(onPressed: (){}, icon: Icon(Icons.headphones)),
                //         IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner)),
                //       ],
                //     )
                //   ],
                // ),
                //TODO: Head TIL section
                Container(
                  padding: const EdgeInsets.all(kDefaultSpace),
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "HEAD TIL 1",
                          style: headTilTextStyle,
                        ),
                        Text("HEAD TIL 2", style: headTilTextStyle),
                        Text("HEAD TIL 3", style: headTilTextStyle),
                        Text("HEAD TIL 4", style: headTilTextStyle),
                      ]),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        "Best practice defenition and meaning",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "SHOP",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blue, primary: Colors.blue),
                      )
                    ],
                  ),
                ),
                //TODO: Images Slider
                CarouselSlider(
                  options: CarouselOptions(
                      height: 200.0,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      autoPlay: true),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/featured.png"),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              child: Row(
                                children: [
                                  Text("300 AED"),
                                  Spacer(),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      "50% off",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                ],
                              ),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2)),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                //TODO: Main categories section
                SizedBox(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CategoryCard(),
                      CategoryCard(),
                      CategoryCard(),
                      CategoryCard(),
                      CategoryCard(),
                      CategoryCard(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        "Best titles",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return bestProducts[index];
            }, childCount: bestProducts.length),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.40,
            ),
          ),
          //TODO: Top title section

          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        "TOP titles",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      TopTitle(),
                      TopTitle(),
                      TopTitle(),
                      TopTitle(),
                      TopTitle(),
                      TopTitle(),
                    ],
                  ),
                ),
                //TODO: shop by category
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        "SHOP BY TITLE",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [SubCategoryCard(), Spacer(), SubCategoryCard()],
                  ),
                ),
              ],
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return subcatproducts[index];
            }, childCount: subcatproducts.length),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.4,
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("TERM OF USE"),
                      Text("CONTACT"),
                      Text("CAREER"),
                      Text("AREA RANGE"),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultSpace,
                  ),
                  Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "PROJECT BY ",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54),
                            ),
                            TextSpan(
                              text: "EZENESS TECHNOLOGY",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            )
          ]))
          //TODO: 3 Images section
          //TODO: Application Footer
        ],
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(
            "Sample",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: ListView(
        children: [
          CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.topgear.com/sites/default/files/news-listicle/image/1buyingachironjuly2016.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.drive.com.au/driveau/image/upload/t_wp-default/v1/cms/uploads/uj11fmsqt33dnhqq6n8x"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.topgear.com/sites/default/files/2021/11/DSC01735.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://i.ytimg.com/vi/MTiYE8I372I/maxresdefault.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.bigboyswithcooltoys.ca/cdn/shop/products/tra97074-1black.jpg?v=1676403973"),
                          fit: BoxFit.cover)),
                )
              ],
              options: CarouselOptions(
                height: 160,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 700),
                viewportFraction: 0.8,
              ))
        ],
      ),
      // bottomNavigationBar: carou,
    );
  }
}

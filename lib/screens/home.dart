import 'package:diwali/color.dart';
import 'package:diwali/models/prodect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Prodect prodect = Prodect();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: SvgPicture.asset('assets/icons/menu.svg',
                  color: Colors.black),
              onPressed: () {},
            ),
            Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset('assets/images/Ellipse 22.jpg'),
            )
          ],
        ),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome, Sanket',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Bring Designer Lamps \nThis Diwali',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 15),
                    SerchBox(),
                  ]),
            ),
            SizedBox(height: 25),
            CategoryList(),
            SizedBox(height: 20),
            Flexible(
              child: ListView.builder(
                itemCount: prodects.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => ProdectCard(
                    title: prodects[index].name,
                    price: prodects[index].prise.toString(),
                    dec: prodects[index].dec,
                    image: prodects[index].image),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset('assets/icons/home.svg'),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset('assets/icons/shopcard.svg'),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset('assets/icons/save.svg'),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset('assets/icons/hart.svg'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class ProdectCard extends StatelessWidget {
  final String title, dec, image;
  final String price;

  const ProdectCard({Key key, this.title, this.dec, this.price, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
      child: Container(
        height: 130,
        width: 396,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black12)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: colorCode('400D54'),
                    borderRadius: BorderRadius.circular(5)),
                child: Image.asset(image),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  dec,
                  style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '\$$price',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    CircleAvatar(
                      minRadius: 15,
                      backgroundColor: colorCode('400D54'),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Container()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SerchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 220,
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'search Diwali lamps',
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 50,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: colorCode('400D54'),
            ),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 35,
            ),
          ),
        )
      ],
    );
  }
}

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;

  var category = ['Paper Lamp', 'Dung Lamp', 'Fancy'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        height: 35,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: category.length,
            itemBuilder: (context, index) => GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 35,
                    width: 95,
                    decoration: BoxDecoration(
                        color: index == selectedIndex
                            ? colorCode('400D54')
                            : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Text(
                          category[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: index == selectedIndex
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}

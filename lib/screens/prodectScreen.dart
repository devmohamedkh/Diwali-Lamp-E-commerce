import 'package:diwali/color.dart';
import 'package:flutter/material.dart';

class ProdectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 380,
              decoration: BoxDecoration(
                  color: colorCode('400D54'),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              child: Image.asset('assets/images/p1.png'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dung Lamp',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Organic Cow Dung Lamp',
                              style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ]),
                      Spacer(),
                      Text(
                        '\$50',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Select color and capacity',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  ProdectColor(),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.alarm),
                      SizedBox(width: 10),
                      Column(children: [
                        Text(
                          'Delivery in',
                          style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '30 min',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ]),
                      Spacer(),
                      Row(children: [
                        Container(
                            height: 26,
                            width: 26,
                            decoration:
                                BoxDecoration(color: colorCode('400D54')),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            )),
                        SizedBox(width: 10),
                        Text(
                          '2',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(width: 10),
                        Container(
                            height: 26,
                            width: 26,
                            decoration:
                                BoxDecoration(color: colorCode('400D54')),
                            child: Icon(
                              Icons.minimize,
                              color: Colors.white,
                              size: 20,
                            )),
                      ])
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Lamp Details',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Organic Cow Dung LampOrganic Cow LampOrganic Cow Dung LampOrganic Cow Dung LampOrganic Cow Dung Lamp sdfsfdsdfsdfsd',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: colorCode('400D54'),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Add to cart',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProdectColor extends StatelessWidget {
  const ProdectColor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          minRadius: 15,
          backgroundColor: Colors.red[900],
        ),
        SizedBox(width: 10),
        CircleAvatar(
          minRadius: 15,
          backgroundColor: Colors.yellow,
        ),
        SizedBox(width: 10),
        CircleAvatar(
          minRadius: 15,
          backgroundColor: Colors.black,
        ),
      ],
    );
  }
}

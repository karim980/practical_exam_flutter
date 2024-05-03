import 'package:exam_fluter/core/colors/app_color.dart';
import 'package:exam_fluter/view/widgets/indecator_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../controller/cart_controller.dart';

class DetailsScreen extends StatelessWidget {
  final CartController cartController = Get.find();
  String img;
  String name;
  String model;

  DetailsScreen({
    Key? key,
    required this.img,
    required this.name,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            padding: EdgeInsets.all(6),
            child: Row(
              children: [
                Icon(Icons.chat_bubble, color: AppColors.button1Color),
                SizedBox(width: 5,),
                Text(
                  'Ask Seller',
                  style: TextStyle(color: AppColors.button1Color),
                )
              ],
            ),
          ),
          SizedBox(width: 15,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  'Type: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Pro 17 w700',
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ],
            ),
            Image(
              image: NetworkImage(img),
              width: double.infinity,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Image(
                  image: NetworkImage(img),
                  width: 90,
                ),
                itemCount: 4,
                scrollDirection: Axis.horizontal,
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.button1Color,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      name,
                      style: TextStyle(color: Colors.white),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('$name Official Store'),
                      Text('View Store'),
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.navigate_next)),
                  )
                ],
              ),
            ),
            // Add TabBar
            Expanded(
              flex: 2,
              child: DefaultTabController(
                length: 1, // Number of tabs
                child: Column(
                  children: [
                    TabBar(
                      labelColor: AppColors.button1Color,
                      dividerHeight: 0,
                      tabs: [
                        Tab(text: 'Products'),
                      ],
                      indicator: CircleTabIndicator(
                          color: AppColors.button1Color, radius: 5),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Content of Tab 1
                          Column(
                            children: [
                              Text(
                                'Gaming is not just a pastime; it\'s an adventure, and every gamer knows that a reliable gaming laptop is the key to unlocking that adventure.',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0, vertical: 14.0),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Price',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 18),
                                        ),
                                        Text(
                                          '\$2500',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    MaterialButton(
                                      onPressed: () {
                                        cartController.addToCart(
                                          img: img,
                                          price: '\$2500',
                                          name: name
                                        );
                                      },
                                      child: Text('Add to Cart'),
                                      color: AppColors.button1Color,
                                      textColor: Colors.white,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 45, vertical: 14),
                                    )
                                  ],
                                ),
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
          ],
        ),
      ),
    );
  }
}

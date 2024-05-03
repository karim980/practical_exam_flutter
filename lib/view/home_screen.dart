import 'package:exam_fluter/core/colors/app_color.dart';
import 'package:exam_fluter/view/cart_screen.dart';
import 'package:exam_fluter/view/details.dart';
import 'package:exam_fluter/view/widgets/indecator_widget.dart';
import 'package:exam_fluter/view/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  String img='https://static.vecteezy.com/system/resources/thumbnails/025/366/622/small/laptop-with-blank-screen-isolate-on-transparent-background-ai-generated-png.png';
  String name= 'Asus';
  String model ='ProArt StudioBook';
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CartView(),));
        }, icon: Icon(Icons.shopping_cart)),
        actions: [Icon(Icons.more_horiz)],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.button1Color,
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Text(
                  'Asus',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: 150,
              decoration: BoxDecoration(
                  color: AppColors.button2Color,
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Top Seller',
                      style: TextStyle(color: AppColors.buttonText2Color),
                    ),
                    Icon(Icons.local_fire_department_outlined)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Asus Official Store',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 10),
                          child: AlignedGridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 25,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder:(context) => DetailsScreen(img: img, name: name, model: model,),));
                              },
                              child: ItemWidget(
                                img: img,
                              ),
                            );
                          },
                                                ),
                        )
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

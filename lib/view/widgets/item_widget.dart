import 'package:exam_fluter/core/colors/app_color.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  var img;

  ItemWidget({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey[300]),
      child: Column(
        children: [
          Image(image: NetworkImage(img)),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ProArt StudioBook',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Asus',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text('Asus'),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.button3Color,
                              borderRadius: BorderRadius.circular(20)),
                          child:Icon(Icons.navigate_next),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

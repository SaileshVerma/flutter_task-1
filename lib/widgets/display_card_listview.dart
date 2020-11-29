import 'package:flutter/material.dart';
import 'package:flutter_task1/model/datalist.dart';
import 'package:flutter_task1/widgets/display_card.dart';

class DisplayList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: DataList.map((i) => DisplayCard(
              name: i.name,
              distance: i.distance,
              fees: i.fees,
              id: i.id,
              img: i.img,
              pos: i.pos,
              rating: i.rating,
            )).toList(),
      ),
    );
  }
}

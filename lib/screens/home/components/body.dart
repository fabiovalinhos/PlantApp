import 'package:flutter/material.dart';
import 'package:plantUiTestFlutter/components/featured_plants.dart';
import 'package:plantUiTestFlutter/components/header_with_searchbox.dart';
import 'package:plantUiTestFlutter/components/title_with_more_bbtn.dart';
import 'package:plantUiTestFlutter/constants.dart';
import 'package:plantUiTestFlutter/screens/home/components/recomend_plants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: 'Recomended',
            prress: () {},
          ),
          RecomendsPlants(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            prress: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}

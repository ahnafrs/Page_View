import 'package:day17/page3.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key, this.model, this.newList});
  Model? model;
  List<Model>? newList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network('${model!.img}'),
    );
  }
}

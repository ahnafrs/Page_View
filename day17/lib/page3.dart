import 'package:day17/details.dart';
import 'package:day17/model.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    model: myList[index],
                    newList: myList,
                  ),
                ));
              },
              leading: CircleAvatar(
                  child: Image.network(
                "${myList[index].img}",
                fit: BoxFit.cover,
              )),
              title: Text('${myList[index].title}'),
              trailing: Text("${myList[index].date}"),
            );
          }),
    );
  }
}

class Model {
  String? title;
  String? date;
  String? img;

  Model({this.title, this.date, this.img});
}

List<Model> myList = [
  Model(
    title: "Hello 01",
    date: "09/11/22",
    img:
        "https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_.jpg",
  ),
  Model(
    title: "Hello 01",
    date: "09/11/22",
    img:
        "https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_.jpg",
  ),
  Model(
    title: "Hello 01",
    date: "09/11/22",
    img:
        "https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_.jpg",
  ),
  Model(
    title: "Hello 01",
    date: "09/11/22",
    img:
        "https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_.jpg",
  ),
  Model(
    title: "Hello 01",
    date: "09/11/22",
    img:
        "https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_.jpg",
  ),
  Model(
    title: "Hello 01",
    date: "09/11/22",
    img:
        "https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_.jpg",
  ),
];

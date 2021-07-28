
import 'dart:collection';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:inventdemo/commonwigets/CircularProgress.dart';
import 'file:///C:/Users/admin/AndroidStudioProjects/inventdemo/lib/components/GridTilesCategory.dart';
import 'package:inventdemo/models/CategoryMoedel.dart';
import 'package:inventdemo/utils/Urls.dart';
import 'package:http/http.dart' as http;


List<Data> categories;
List<Media> media;
class CategoriesScreen extends StatefulWidget{
String id;
String name;
CategoriesScreen({Key key, this.id, this.name }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CategoriesScreen();
  }
}
class _CategoriesScreen extends State <CategoriesScreen>{
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar:  AppBar(title:Text('categories') ,),
        body: FutureBuilder<List<Data>> (
          future: getCategoryList(widget.id,widget.name),
          builder: (context, AsyncSnapshot snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return CircularProgress();
              default:
                if (snapshot.hasError)
                  return Text('Error: ${snapshot.error}');
                else
                  return createListView(context, snapshot);
            }
          },
        ));
  }

}
Widget createListView(
    BuildContext context, AsyncSnapshot snapshot) {
  List<Data> values = snapshot.data;

  return GridView.count(
    crossAxisCount: 3,
   physics: NeverScrollableScrollPhysics(),
    padding: EdgeInsets.all(1.0),
    childAspectRatio: 8.0 / 9.0,
    children: List<Widget>.generate(values.length, (index) {
      return GridTile(
          child: GridTilesCategory(
            id: values[index].id,
            name: values[index].name,
           // thumb: mediavalues[index].thumb,

          ));
    }),
  );
}

   Future<List<Data>> getCategoryList(String id,String name) async {



if (categories == null) {

  if (categories == null) {
    Response response;
    response = await get(Urls.Category_ROOT_URL );
    int statusCode = response.statusCode;
    final body = json.decode(response.body);






    if (statusCode == 200) {
      print( 'categories' );

      categories =
          (body as List).map( (i) => Data.fromJson( i ) ).toList( );
      return categories;
    }
    } else {

      return categories = List();
    }
  } else {
    return categories;

  }


}


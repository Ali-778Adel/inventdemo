import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart';
import 'package:inventdemo/commonwigets/AppBarWidget.dart';
import 'package:inventdemo/commonwigets/CircularProgress.dart';
import 'file:///C:/Users/admin/AndroidStudioProjects/inventdemo/lib/components/GridTilesProducts.dart';
import 'package:inventdemo/models/ProductsModel.dart';
import 'package:inventdemo/utils/Urls.dart';

import 'CategoriesScreen.dart';

class ProductsScreen extends StatefulWidget {
  String name;
  String slug;

  ProductsScreen({Key key, @required this.name})
      : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      body: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: ProductListWidget(

          )),
    );
  }
}

class ProductListWidget extends StatelessWidget {


  ProductListWidget({Key key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getProductList( false),
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
    );
  }
}

Data productsData;

Future<Data> getProductList( bool isSubList) async {

  if (productsData == null) {
    Response response;
    response = await get(Urls.products_ROOT_URL);
    int statusCode = response.statusCode;
    final body = json.decode(response.body);
    if (statusCode == 200) {
      productsData = Data.fromJson(body);
      return productsData;
    } else {
      return productsData = Data();
    }
  } else {
    return productsData;
  }
}

Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
 List<Data>  values = snapshot.data;
 List<Media>media=snapshot.data;
 //List<>
 // List<Results> results = values.results;
  return GridView.count(
    crossAxisCount: 2,
//    physics: NeverScrollableScrollPhysics(),
    padding: EdgeInsets.all(1.0),
    childAspectRatio: 8.0 / 12.0,
    children: List<Widget>.generate(values.length, (index) {
      return GridTile(
          child: GridTilesProducts(
            id:values[index].id ,
            name: values[index].name,
            img_url: media[index].thumb,
            price: values[index].price,
            discountPrice:values[index].discountPrice,
            capacity: values[index].capacity,
            description: values[index].description,

      ));
    }),
  );
}

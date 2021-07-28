import 'package:flutter/material.dart';


class GridTilesCategory extends StatelessWidget {
  int id;
  String name;
  String description;
  String thumb;

  GridTilesCategory(
      {Key key,
      @required this.id,
      @required this.name,
     // @required this.thumb


      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
        child:Card(
            color: Colors.white,
            elevation: 0,
            child: Center(
              child: Column(
                children: <Widget>[
                  Image.network(
                  thumb,
                    width: 100,
                    height: 100,
                  ),
                  Text( name,
                      style: TextStyle(
                          color: Color( 0xFF000000 ),
                          fontFamily: 'Roboto-Light.ttf',
                          fontSize: 12 ) )
                ],
              ),
            ) )

       );
  }
}


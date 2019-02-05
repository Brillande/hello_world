import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

String namePlace;
int stars;
String descriptionPlace;
String descriptionDummy = "Salamanca its the favorite place of Joseba. No ones knows why but this place its undefined. Maybe someone can find it. remenber one thing: Follow your dreams.";
DescriptionPlace(this.namePlace,this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star_Half= Container(
        margin:EdgeInsets.only(
        top:323.0,
        right:3.0,
      ),

      child:Icon(
        Icons.star_half,
        color: Color(0xFFf2c611),            
      ),
    );

      final star_Border= Container(
        margin:EdgeInsets.only(
        top:323.0,
        right:3.0,
      ),

      child:Icon(
        Icons.star_half,
        color: Color(0xFFf2c611),            
      ),
    );
    final star=Container(
      margin:EdgeInsets.only(
        top:323.0,
        right:3.0,
      ),

      child:Icon(
        Icons.star,
        color: Color(0xFFf2c611),            
      ),
    );

    final description=Container(
      margin:EdgeInsets.only(
        top:20.0,
        left:20.0,
        right:20.0
      ),
       child: new Text(
         descriptionPlace,
          style:TextStyle(
            fontFamily: "Lato",
            fontSize: 14.0,
            fontWeight: FontWeight.normal 
          ),
          textAlign: TextAlign.center
      )
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin:EdgeInsets.only(
            top: 320.0,
            left:20.0,
            right: 20.0,           
          ),
          child: Text(
            namePlace,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize:30.0,
                fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(children: <Widget>[
            star,
            star,
            star,
            star,
            star
          ],
        ),
      ],
    );

    return Column(children: <Widget>[
      title_stars,
      description
      ],
    );
  }
}
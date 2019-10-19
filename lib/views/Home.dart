import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  
  @override
  State createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('NoFire App'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 140,
                  color: Colors.red,
                  child: null,
                ),
                Container(
                  alignment: Alignment(0, -1),
                  height: 260,
                  padding: EdgeInsets.only(left: 8.0, top: 0.0, bottom: 8.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      for ( var i = 0; i < 5; i++ )
                        Card(
                          elevation: 0.2,
                          child: InkWell(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                CachedNetworkImage(
                                  imageUrl: 'https://via.placeholder.com/480x360',
                                  placeholder: (context, url) => Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Center(child: new CircularProgressIndicator(strokeWidth: 1.0,)),
                                  ),
                                  errorWidget: (context, url, error) => new Icon(Icons.error),
                                  imageBuilder: (context, imageProvider)=>Container(
                                    width: MediaQuery.of(context).size.width-60,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                                      image: DecorationImage(image: imageProvider,
                                      fit: BoxFit.fill
                                    )
                                  ),)
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 8.0, left:8.0),
                                  child: Text('Promoción local', style: TextStyle(color: Colors.greenAccent , fontWeight: FontWeight.w500 ), ),
                                ),
                                Container(
                                  padding: EdgeInsets.only( top: 4.0, left: 8.0 ),
                                  child: Text('Título', style: TextStyle( color: Colors.grey, fontWeight: FontWeight.bold),),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width-80,
                                  padding: EdgeInsets.only( top: 2.0, left: 8.0 ),
                                  child: Text('Este es un subtítulo que contiene detalles de esta promoción', style: TextStyle( color: Colors.grey, fontWeight: FontWeight.w300),),
                                ),
                              ],
                            ),
                            onTap: (){},
                          ),
                        )
                    ],
                  ),
                ),
              ],
            ),
            
            for ( var i = 0; i < 15; i++ )
              InkWell(
                //elevation: 0.2,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: CachedNetworkImage(
                        imageUrl: 'https://via.placeholder.com/1080x480',
                        placeholder: (context, url) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Center(child: new CircularProgressIndicator(strokeWidth: 1.0,)),
                        ),
                        errorWidget: (context, url, error) => new Icon(Icons.error),
                        imageBuilder: (context, imageProvider)=>Container(
                          width: MediaQuery.of(context).size.width,
                          height: 160,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: imageProvider,
                            fit: BoxFit.fill
                          )
                        ),)
                      ),
                    ),
                  ],
                ),
                onTap: (){},
              )
          ],
        ),
      ),
    );
  }
}
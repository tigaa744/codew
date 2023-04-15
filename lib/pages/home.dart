import 'dart:ui';
import'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:transparent_image/transparent_image.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),
body:Container(
  color: Colors.deepOrange,
  child:   Column(
   mainAxisSize: MainAxisSize.max,
    children: [

  Icon(Icons.star ,size: 50,),
      Icon(Icons.star ,size: 50,),
      Icon(Icons.star ,size: 50,),


    ],
  ),
)
    );
  }
}
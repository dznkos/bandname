import 'package:band_names/models/band.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List<Band> bands = [
    Band(id: '1', name: 'Metalica', votes: 5),
    Band(id: '2', name: 'Guns and Roses', votes: 2),
    Band(id: '3', name: 'Van Van', votes: 6),
    Band(id: '4', name: 'Gran Combo', votes: 3),
  ]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BandNames'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text( bands[index].name.substring(0,2)),
            ),
          )
        },
      )
    );
  }
}

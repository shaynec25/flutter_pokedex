import 'package:flutter/material.dart';

class PokeInfo extends StatelessWidget {
  const PokeInfo({ this.name }) : super();
  final name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: TextButton(child: Text('press here'), onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const PokeInfo()));
        },),
      ),
    );
  }
}
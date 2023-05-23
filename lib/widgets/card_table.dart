import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _Siglecard(color: Colors.blue, icon: Icons.border_all, text: 'General'),
            _Siglecard(color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Transport'),
          ]
        )
      ],
    );
  }
}

class _Siglecard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _Siglecard({super.key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, size: 35,),
            radius: 30,
          ),
          SizedBox(height: 10,),
          Text(text, style: TextStyle(color: color, fontSize: 18),)
        ],
      ),
    );
  }
}
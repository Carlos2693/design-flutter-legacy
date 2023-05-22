import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imagen
          Image(image: AssetImage('assets/landscape.jpg')),
          // Titulo
          Title(),
          // Button section
          ButtonSection(),
          // Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Eiusmod proident ut quis ipsum commodo ullamco. Minim elit dolor aute eiusmod ut irure commodo dolor ut et ullamco. Et deserunt ipsum eiusmod deserunt magna consectetur aliquip consequat officia ipsum nisi. Labore deserunt dolor ipsum eu commodo aliqua laborum id. Culpa id nulla aliquip dolore ut duis amet consectetur Lorem adipisicing cupidatat do velit enim.')
          )
        ],
      )
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30 , vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campgroud', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45),),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
    
          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.navigation, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30,),
        Text(text, style: TextStyle(color: Colors.blue),)
      ],
    );
  }
}


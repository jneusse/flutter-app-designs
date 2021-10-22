import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/photo-landscape.jpeg'),
          ),
          Title(),
          ButtonSection(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Text(
                'Veniam mollit ipsum culpa nostrud consequat ea aliqua qui Lorem do excepteur consequat. Quis irure irure in voluptate dolore minim incididunt ad minim anim non cupidatat. Consectetur minim ex minim nulla adipisicing dolore sunt pariatur ex ut est sit. Sint labore non nisi mollit sit ut aute ex et labore id laboris. Do et aliquip occaecat dolore. Velit commodo veniam consequat in.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Qui dolor magna voluptate ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Et magna do consequat  ',
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star),
          Text('4,5')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.near_me, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share')
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            iconSize: 24,
            icon: Icon(
              icon,
              color: Colors.blue.shade400,
              size: 28,
            )),
        Text(
          text,
          style: TextStyle(color: Colors.blue.shade400),
        )
      ],
    );
  }
}

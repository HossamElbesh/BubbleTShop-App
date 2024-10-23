import 'package:flutter/material.dart';
import '../models/drink.dart';

class DrinkTile extends StatelessWidget {
  final Drink drink;
  void Function()? onTap;
  final Widget trailing;

  DrinkTile({
    super.key,
    required this.drink,
    required this.onTap,
    required this.trailing,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.brown[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(drink.name,
            style: TextStyle(color: Colors.brown[900],fontWeight: FontWeight.bold),),
          subtitle: Text(drink.price),
          leading: Image.asset(drink.imagePath,),
          trailing: trailing,
        ),
      ),
    );
  }
}

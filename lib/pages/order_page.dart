import 'package:bubble_tea/models/drink.dart';
import 'package:bubble_tea/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;
  const OrderPage({super.key, required this.drink});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  double sweetValue = 0.5;
  void customizeSweet (double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }

  double iceValue = 0.5;
  void customizeIce (double newValue) {
    setState(() {
      iceValue = newValue;
    });
  }

  double pearlsValue = 0.5;
  void customizePearls (double newValue) {
    setState(() {
      pearlsValue = newValue;
    });
  }

  void addToCart(){
    Provider.of<BubbleTeaShop>(context,listen: false).addToCart(widget.drink);
    
    Navigator.pop(context);

    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text("Successfully Added To Cart"),
    ),);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.drink.name),),
      backgroundColor: Colors.brown[200],
      body: Column(
        children: [
          Image.asset(widget.drink.imagePath),
          
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                        width: 100,
                        child: Text("Sweet")),
                    Expanded(
                      child: Slider(
                        value: sweetValue,
                        label: sweetValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizeSweet(value),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                        width: 100,
                        child: Text("Ice")),
                    Expanded(
                      child: Slider(
                        value: iceValue,
                        label: iceValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizeIce(value),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                        width: 100,
                        child: Text("Pearls")),
                    Expanded(
                      child: Slider(
                        value: pearlsValue,
                        label: pearlsValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizePearls(value),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: 80,
              width: double.infinity,
              child: MaterialButton(
                child: Text("Add To Cart",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                color: Colors.brown,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
                onPressed: addToCart,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

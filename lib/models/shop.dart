import 'package:bubble_tea/models/drink.dart';
import 'package:flutter/cupertino.dart';

class BubbleTeaShop extends ChangeNotifier {
  final List<Drink> _shop =[
    Drink(name: "Pearl Milk Tea",
        price: "4.00",
        imagePath: "lib/images/milk_tea.png",
    ),

    Drink(name: "Caramel Dream",
      price: "8.00",
      imagePath: "lib/images/CaramelDream.png",
    ),

    Drink(name: "Matcha Cloud",
      price: "9.00",
      imagePath: "lib/images/MatchaCloud.png",
    ),

    Drink(name: "Blueberry Bliss",
      price: "6.00",
      imagePath: "lib/images/BlueberryBliss.png",
    ),

    Drink(name: "Strawberry Swirl",
      price: "10.00",
      imagePath: "lib/images/StrawberrySwirl.png",
    ),

    Drink(name: "Dark Pearl Deluxe",
      price: "12.00",
      imagePath: "lib/images/DarkPearlDeluxe.png",
    ),
  ];
  
  final List<Drink> _userCart = [];
  
  List<Drink> get shop => _shop;
  
  List<Drink> get cart => _userCart;
  
  void addToCart(Drink drink){
    _userCart.add(drink);
    notifyListeners();
  }

  void removeFromCart(Drink drink){
    _userCart.remove(drink);
    notifyListeners();
  }
}
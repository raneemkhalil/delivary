import 'package:delivary/models.dart';


List<Menues> listOfMenues = const [
  Menues(title: 'Burger', pathImage: 'assets/images/burger.png'),
  Menues(title: 'Pizza', pathImage: 'assets/images/pizza.png'),
  Menues(title: 'Pasta', pathImage: 'assets/images/pasta.png'),
  Menues(title: 'Chicken', pathImage: 'assets/images/chicken.png'),
  Menues(title: 'Drinks', pathImage: 'assets/images/drinks.png'),
  Menues(title: 'Beef', pathImage: 'assets/images/beef.png')
];

List <FoodItem> foodItems = [
  FoodItem(id: 1, name: 'Beef Burger', pathImage: 'assets/images/beef-burger.webp',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Burger', isFavorite: false,
    size: 'Large', calories: '190 KCal', cooking: '5 - 10 Mins', description: 'fregtrvrthtvwefevcrvbjhghjghfjhdftryecrtxerwzxrcfjvygoyubdthnhj'),
  FoodItem(id: 2, name: 'Chicken Burger', pathImage: 'assets/images/chicken-burger.webp',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Burger', isFavorite: false,
    size: 'Medium', calories: '130 KCal', cooking: '3 - 6 Mins', description: 'ryecrtxerwzxrcfjvygoyubdthnhj'),
  FoodItem(id: 3, name: 'Vegetable Burge', pathImage: 'assets/images/food-vegetable-burger.png',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Burger', isFavorite: false,
    size: 'Small', calories: '90 KCal', cooking: '5 - 10 Mins', description: 'fregtrvrthtvwefevcrvbjhvygoyubdthnhj'),
  FoodItem(id: 4, name: 'Tofu Burger', pathImage: 'assets/images/Tofu-Burger.png',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Burger', isFavorite: false,
    size: 'Large', calories: '190 KCal', cooking: '5 - 10 Mins', description: 'fregtrvrthtvwefevcrvbjhghjghfjhdftryecrtxerwzxrcfjvygoyubdthnhj'),
  FoodItem(id: 5, name: 'NewYork Pizza', pathImage: 'assets/images/new-york-pizza.png',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Pizza', isFavorite: false,
    size: 'Large', calories: '220 KCal', cooking: '45 - 60 Mins', description: 'fregtrvrthtvwefevcerwzxrcfjvygoyubdthnhj'),
  FoodItem(id: 6, name: 'Gourmet Pizza', pathImage: 'assets/images/gourmet-pizza.png',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Pizza', isFavorite: false,
    size: 'Medium', calories: '190 KCal', cooking: '30 - 45 Mins', description: 'hfjhdftryecrtxerwzxrcfjvygoyubdthnhj'),
  FoodItem(id: 7, name: 'Italian Pizza', pathImage: 'assets/images/italian-pizza.png',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Pizza', isFavorite: false,
    size: 'Small', calories: '80 KCal', cooking: '20 - 30 Mins', description: 'fregtrvrthtvwefevcrvbjhghjghfjhdftryecrtxerwzxrcfjvygoyubdthnhj'),
  FoodItem(id: 8, name: 'Sicilian Pizza Italian', pathImage: 'assets/images/Sicilian-pizza-talian.png',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Pizza', isFavorite: false,
    size: 'Large', calories: '190 KCal', cooking: '30 - 45 Mins', description: 'fregtrvrthtvwefevcrvbjhghjghfjhdftryecrtxerwzxrcfjvygoyubdthnhj'),
  FoodItem(id: 9, name: 'Spaghetti Meal', pathImage: 'assets/images/spaghetti-meal.png',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Pasta', isFavorite: false,
    size: 'Large', calories: '400 KCal', cooking: '12 - 15 Mins', description: 'fregtrvrthtvwefevcrvbjhghjghfjhdftryecrtxerwzxrcfjvygoyubdthnhj'),
  FoodItem(id: 10, name: 'White Sauce', pathImage: 'assets/images/white-sauce.png',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Pasta', isFavorite: false,
    size: 'Medium', calories: '190 KCal', cooking: '10 - 15 Mins', description: 'fregtrvrthtvwefevcrvbjhghjghfjhdftryecrtxerwzxrcfjvygoyubdthnhj'),
  FoodItem(id: 11, name: 'Southern Fried', pathImage: 'assets/images/southern-fried-chicken.png',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Chicken', isFavorite: false,
    size: 'Small', calories: '150 KCal', cooking: '25 - 30 Mins', description: 'fregtrvrthtvwefevcrvbjhghjghfjhdftryecrtxerwzxrcfjvygoyubdthnhj'),
  FoodItem(id: 12, name: 'Crispy Fried', pathImage: 'assets/images/Crispy-Fried.png',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Chicken', isFavorite: false,
    size: 'Large', calories: '220 KCal', cooking: '20 - 25 Mins', description: 'fregtrvrthtvwefevcrvbjhghjghfjhdftryecrtxerwzxrcfjvygoyubdthnhj'),
  FoodItem(id: 13, name: 'Grilled Chicken', pathImage: 'assets/images/grilled-chicken.png',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Chicken', isFavorite: false,
    size: 'Medium', calories: '180 KCal', cooking: '15-20 Mins', description: 'fregtrvrthtvwefevcrvbjhghjghfjhdftryecrtxerwzxrcfjvygoyubdthnhj'),
  FoodItem(id: 14, name: 'Cold Brew Coffee', pathImage: 'assets/images/fresh-cold-brew-coffee.png',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Drinks', isFavorite: false,
    size: 'Medium', calories: '120 KCal', cooking: '5-10 Mins', description: 'fregtrvrthtvwefevcrvbjhghjghfjhdftryecrtxerwzxrcfjvygoyubdthnhj'),
  FoodItem(id: 15, name: 'Orange Juice', pathImage: 'assets/images/Orangejuice.webp',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Drinks', isFavorite: false,
    size: 'Medium', calories: '160 KCal', cooking: '5-10 Mins', description: 'fregtrvrthtvwefevcrvbjhghjghfjhdftryecrtxerwzxrcfjvygoyubdthnhj'),
  FoodItem(id: 16, name: 'Steak', pathImage: 'assets/images/steak-food.png',
    estimatedTime: '30', frequencyOfSelling: 120, price: 5.40, category: 'Beef', isFavorite: false,
    size: 'Medium', calories: '500 KCal', cooking: '5-10 Mins', description: 'fregtrvrthtvwefevcrvbjhghjghfjhdftryecrtxerwzxrcfjvygoyubdthnhj'),
  ];


List<Coupons> coupons = [
  Coupons(
    id: '1',
    name: 'Employee coupons',
    value: 1,
  ),
  Coupons(
    id: '2',
    name: 'Tariq coupons',
    value: 2,
  ),
];


List<Order> orderedFood = [
  
];
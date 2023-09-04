import 'package:delivary/models.dart';
import 'package:flutter/material.dart';
import 'package:delivary/constants.dart';
import 'package:delivary/widgets/product_details_property.dart';

class ProductDetails extends StatefulWidget {
  final FoodItem productItem;
  const ProductDetails({super.key, required this.productItem});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity = 1;
  int naturalIndex = 0;

  void _decreaseQuantity() {
    setState(() {
      if (quantity > 1) {
        quantity -= 1;
      }
    });
  }

  void _increaseQuantity() {
    setState(
      () => quantity += 1,
    );
  }
  
  @override
  void initState() {
    super.initState();
    FoodItem getItem = foodItems.firstWhere((foodItem) => widget.productItem.id == foodItem.id);
    naturalIndex = foodItems.indexOf(getItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios), onPressed: (){
          Navigator.of(context).pop(foodItems);
        },),
        title: Text(widget.productItem.name),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                widget.productItem.setFavorite = !widget.productItem.getFavorite();
                foodItems[naturalIndex] = widget.productItem;
              });
            },
            icon: Icon(
              widget.productItem.getFavorite() ? Icons.favorite : Icons.favorite_border,
              color: Colors.deepOrange,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Image.asset(
                          widget.productItem.pathImage,
                          width: double.infinity,
                          height: 250,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 24.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.productItem.name,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    widget.productItem.category,
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.0),
                                  ),
                                ],
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 250, 247, 247),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: quantity > 1
                                          ? _decreaseQuantity
                                          : null,
                                      icon: const Icon(Icons.remove),
                                    ),
                                    const SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(quantity.toString()),
                                    const SizedBox(
                                      width: 4.0,
                                    ),
                                    IconButton(
                                      onPressed: _increaseQuantity,
                                      icon: const Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ProductDetailsProperty(
                                title: 'Size',
                                value: widget.productItem.size,
                              ),
                              const SizedBox(
                                height: 40.0,
                                child: VerticalDivider(
                                  thickness: 2.0,
                                ),
                              ),
                              ProductDetailsProperty(
                                title: 'Calories',
                                value: widget.productItem.calories,
                              ),
                              const SizedBox(
                                height: 40.0,
                                child: VerticalDivider(
                                  thickness: 2.0,
                                ),
                              ),
                              ProductDetailsProperty(
                                title: 'Cooking',
                                value: widget.productItem.cooking,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                          Text(
                            widget.productItem.description,
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  start: 18.0, end: 18.0, bottom: 8.0, top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '\$ ${(widget.productItem.price * quantity).toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: const Text('Checkout'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

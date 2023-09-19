import 'package:flutter/material.dart';
import 'package:delivary/models.dart';
import 'package:delivary/constants.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {

  late int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders Page'),
      ),
      body: orderedFood.isEmpty ? const Center(
        child: Text(
          'Empty...',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black26, fontSize: 20),)) : ListView.builder(
            itemCount: orderedFood.length,
            itemBuilder: ((context, index) => Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Image.asset(orderedFood[index].item.pathImage, fit: BoxFit.fill, width: 80, height: 60,),
                  title: Text('[${orderedFood[index].quantity}] ${orderedFood[index].item.name}', style: const TextStyle(fontWeight: FontWeight.w700,),),
                  subtitle: Text(orderedFood[index].item.category),
                ),
              ),
            ))
          )
    );
  }
}

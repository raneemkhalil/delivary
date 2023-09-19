import 'package:flutter/material.dart';
import 'package:delivary/models.dart';
import 'package:delivary/constants.dart';


class CouponsPage extends StatefulWidget {
  const CouponsPage({super.key});

  @override
  State<CouponsPage> createState() => _CouponsPageState();
}

class _CouponsPageState extends State<CouponsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coupons'),
      ),
      body: coupons.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Empty..',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: coupons.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 80,
                  child: Card(
                    child: Center(
                      child: ListTile(
                        leading: Text(
                          coupons[index].name,
                          style: const TextStyle(fontSize: 22.0),
                        ),
                        trailing: Text(
                          'value = ${coupons[index].value.toString()}\$',
                          style: const TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                );
              }),
    );
  }
}
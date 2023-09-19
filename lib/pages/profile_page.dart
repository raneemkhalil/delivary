import 'package:delivary/constants.dart';
import 'package:delivary/pages/coupons_page.dart';
import 'package:flutter/material.dart';
import 'package:delivary/pages/orders_page.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              const CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage('https://images.pexels.com/photos/1031081/pexels-photo-1031081.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
              ),
              const SizedBox(height: 30,),
              const Text(
                "Raneem Khalil",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 5,),
              const Text(
                "Computer Sience",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38
                ),
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text("Orders", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54),),
                      Text('${orderedFood.length}', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),)
                    ],
                  ),
                  const SizedBox(height: 50, child: VerticalDivider(color: Colors.black26)),
                  Column(
                    children: [
                      const Text("Coupons", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54),),
                      Text('${coupons.length}', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),)
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
                    ListTile (
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OrdersPage()));
                      },
                      leading: const Icon(Icons.shopping_cart_outlined, color: Colors.black,),
                      title: const Text('Orders', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
                    ListTile (
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CouponsPage()));
                      },
                      leading: const Icon(Icons.card_giftcard, color: Colors.black,),
                      title: const Text('Coupons', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                    const Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

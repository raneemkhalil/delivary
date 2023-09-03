import 'package:flutter/material.dart';
import 'package:delivary/constants.dart';
import 'package:delivary/models.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  late int currentIndex;
  late List<FoodItems> filterdCategory;
  
  @override
  void initState() {
    super.initState();
    filterdCategory = foodItems;
    currentIndex = -1;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(240, 255, 255, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.menu, color: Colors.black,),
                        ),
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          'Current Location',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 20,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              'Cairo, Egypt',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.notifications),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    'http://t4.ftcdn.net/jpg/02/94/30/59/360_F_294305984_60loa4kkSKjpHXegEUFqryY1PrhRRMeN.jpg',
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor:Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsetsDirectional.only(start:10),
                      child: Icon(
                        Icons.search,
                        size: 45,
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'Find your food ...',
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  height: 105,
                  child: ListView.builder(
                    itemCount: listOfMenues.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () => setState(() {
                        int previosIndex = currentIndex;  
                        if(currentIndex == -1 || currentIndex != index){
                          currentIndex = index;
                        }
                        else{
                          currentIndex = -1;
                        }
                        if(currentIndex == previosIndex){
                          currentIndex = -1;
                        }
                        if(currentIndex != -1){
                          final String selectedCategory = listOfMenues[currentIndex].title;
                          filterdCategory = foodItems.where((item) => item.category == selectedCategory).toList();
                        }else{
                          filterdCategory = foodItems;
                        }
                      }),
                      child: Card(
                        color: currentIndex == index ?Colors.deepOrangeAccent : Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(listOfMenues[index].pathImage, width: 60, height: 50, color: currentIndex == index ?Colors.white : Colors.black,),
                            ),
                            Text(listOfMenues[index].title, style: TextStyle(color: currentIndex == index ?Colors.white : Colors.black54,),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 230,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: filterdCategory.length,
                  itemBuilder: ((context, index) => Card(
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 120,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    filterdCategory[index].pathImage,
                                    height: 103.2,
                                    width: 120,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                filterdCategory[index].name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '${filterdCategory[index].estimatedTime} Min  |  ${filterdCategory[index].frequencyOfSelling} Sell',
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 139, 139, 139),
                                ),
                              ),
                              Text(
                                '\$ ${filterdCategory[index].price}',
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 235, 112, 30),
                                    fontWeight: FontWeight.bold),
                              ),
                          
                            ],
                          ),
                        ),
                        PositionedDirectional(
                          child: IconButton(
                            onPressed: (){
                              setState(() {
                                filterdCategory[index].setFavorite = !filterdCategory[index].getFavorite();
                                FoodItems getItem = foodItems.firstWhere((foodItem) => filterdCategory[index].id == foodItem.id);
                                int naturalIndex = foodItems.indexOf(getItem);
                                foodItems[naturalIndex] = filterdCategory[index];
                              });
                            },
                            icon: Icon(
                              filterdCategory[index].getFavorite() ? Icons.favorite : Icons.favorite_outline,
                              color: Colors.deepOrangeAccent,
                            )
                          ),
                          top: 0,
                          end: 0,
                        )
                      ]
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: SizedBox(
      //   height: 70,
      //   width: 90,
      //   child: FloatingActionButton(
      //     shape: const CircleBorder(),
      //     backgroundColor: Colors.deepOrangeAccent,
      //     onPressed: () {},
      //     child: const Icon(
      //       Icons.shopping_cart_outlined,
      //       color: Colors.white,
      //       size: 30,
      //     ),
      //   ),
      // ),
      // bottomNavigationBar: BottomAppBar(
      //   notchMargin: 0.0,
      //   height: 50,
      //   color: Colors.white,
      //   shape: const CircularNotchedRectangle(),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsetsDirectional.only(end: 20),
      //             child: IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.home,
      //                 color: Colors.black,
      //               ),
      //             ),
      //           ),
      //           IconButton(
      //             onPressed: () {},
      //             icon: const Icon(
      //               Icons.payment,
      //               color: Colors.black,
      //             ),
      //           ), 
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           IconButton(
      //             onPressed: () {},
      //             icon: const Icon(
      //               Icons.favorite,
      //               color: Colors.black,
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsetsDirectional.only(start: 20),
      //             child: IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.person,
      //                 color: Colors.black,
      //               ),
      //             ),
      //           ),
      //         ],
      //       )
      //     ],
      //   )),
    );
  }
}

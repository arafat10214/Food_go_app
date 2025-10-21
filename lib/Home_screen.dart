import 'package:flutter/material.dart';
import 'package:food_app/Product_one.dart';

import 'foodItem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex =0;
  int SelectedIndex=0;
    final List<String> categories = [
    "All",
    "Combos",
    "Sliders",
    "Classic",
    "Drinks",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/Foodgo.png",
                height: 61,
                width: 129,
                color: Colors.black,
                ),
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: Image.asset("assets/images/Person.png",
                  height: 60,
                  width: 60,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text("Order your favourite food!",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                color: Color(0XFF6A6A6A),
              ),
              ),
            ),
            SizedBox(
              height: 47,
            ),
///////////=============Search Bar================/////////////////
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 19,
                        offset: Offset(0, 4),
                      ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,size: 30,),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                        ),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Icon(Icons.tune,color: Colors.white,size: 30,),
                  ),
              ],
            ),
            SizedBox(
              height: 35,
              ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final text = categories[index];
                    final isSelected = selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: CategoryChip(text, isSelected),
                    );
                  },
                ),
              ),
            SizedBox(
              height: 41,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductOne()));
              },
              child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                 childAspectRatio: 0.78,///height problem ////
                  children: [
                    FoodItem("a1","Cheeseburger", "Wendy's Burger", "4.9", "assets/images/image_four.png"),
                    FoodItem("a2","Hamburger", "Veggie Burger", "4.8", "assets/images/image_three.png"),
                    FoodItem("a3","Hamburger", "chicken Burger", "4.6", "assets/images/image_two.png"),
                    FoodItem('a4',"Hamburger", "Fried Chicken Burger", "4.5", "assets/images/image_one.png"),
                  ],
              ),
            ),
            ],
              ),
            ),
        ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.redAccent,
        shape: CircleBorder(),
      child: Icon(Icons.add,color: Colors.white,size: 30,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.redAccent,
        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        child: SizedBox(
          height: 60,
            child: BottomNavigationBar(
              onTap: (index)=> setState(() {
                SelectedIndex=index;
              }),
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white30,
              currentIndex: SelectedIndex,
              items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home,size: 20,),label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person,size: 20,),label: "",
              ),
                 BottomNavigationBarItem(
                  icon: Opacity(opacity: 0.0, child: Icon(Icons.circle,size: 20,),),
                  label: '',
                ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined,size: 20,),label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite,size: 20,),label: "",
              ),

            ],),
          ),
        ),

      );
  }
}

/////////========Category Chips=====================/////////////

Widget CategoryChip(String text, bool selected){
  return Container(
    margin: EdgeInsets.only(right: 10),
    padding: EdgeInsets.symmetric(
      horizontal: 30,
      vertical: 15,
      ),
      decoration: BoxDecoration(
        color: selected ? Colors.redAccent : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            
          ),
        ],
      ),
      child: Center(
        child: Text(text, 
        style: TextStyle(
          color: selected? Colors.white : Colors.grey[800],
          fontSize: 16,
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
        ),
        ),
      ),
  );
}
import 'package:flutter/material.dart';

class ProductOne extends StatefulWidget {
  const ProductOne({super.key});

  @override
  State<ProductOne> createState() => _ProductOneState();
}

class _ProductOneState extends State<ProductOne> {
  
 double _Spicylevel =0;
 int _portion =0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [

////=================   Back Button && Searchbar  ======================///////////

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    },
                        icon: Icon(Icons.arrow_back,size: 30,),
                    ),
                    Icon(Icons.search,size: 30,)
                  ],
                ),

///////======================  Burger Image With add Shadow ===========================/////
               
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [

////===========================  shadow  =========================////
                      Container(
                        height: 30,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                             BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 20,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                      ),
                      
/////////========================= Cheeseburger_Wendy's_Burger(Image) ========================//////////////

                      Image.asset(
                        'assets/images/Cheeseburger_Wendys_Burger.png',
                        height: 356,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),

////////=========================Tittle===================/////////
                
                Text("Cheeseburger Wendy's Burger",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Roboto",
                  fontSize: 24,
                ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(Icons.star,color: Color(0xffFF9633),size: 20,),
                    SizedBox(
                      width: 3,
                    ),
                    Text("4.9  -  26 mins",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                    ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text("The Cheeseburger Wendy's Burger is a classic fast \n food burger that packs a punch of flavor in every bite.\n Made with a juicy beef patty cooked to perfection, it's \n topped with melted American cheese, crispy lettuce, \n ripe tomato, and crunchy pickles.",
                style: TextStyle(
                height: 1.9,
                color: Color(0XFF6A6A6A),
                fontSize: 15,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400,
                ),
                ),
                SizedBox(
                  height: 30,
                ),

/////////////////============================= Spicy (Slider) =============================///////////


           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Spicy",style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  ),
                  Slider(
                    value: _Spicylevel, 
                    min: 0,
                    max: 3,
                    activeColor: Colors.redAccent,
                    onChanged: (value){
                      setState(() {
                        _Spicylevel =value;
                      });
                    }
                    ),
                    Row(
                      children: [
                        Text("Mild",style: TextStyle(
                          color: Color(0XFF1CC019),
                          fontFamily: "Roboto",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        SizedBox(
                          width: 126,
                        ),
                          Text("Hot",style: TextStyle(
                          color: Color(0XFFEF2A39),
                          fontFamily: "Roboto",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                      ],
                    ),
                    ],
                  ),
///////////////////=================== Portion Counter==========================///////////////////////
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                            "Portion",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                           SizedBox(height: 10),
                          Container(
                            padding:  EdgeInsets.symmetric(horizontal: 6),
                            decoration: BoxDecoration(
                              color:  Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
////////////======================Decriment Button============================////////////
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.remove,
                                        color: Colors.white, size: 18),
                                    onPressed: () {
                                      setState(() {
                                        if (_portion > 0) _portion--;
                                      });
                                    },
                                  ),
                                ),
                                 SizedBox(width: 15),
                                Text(
                                  "$_portion",
                                  style:  TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                 SizedBox(width: 15),
/////////////////================Incriment Button ================================//////////////

                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                    icon:  Icon(Icons.add,
                                        color: Colors.white, size: 18),
                                    onPressed: () {
                                      setState(() {
                                        _portion++;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
               Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding:  EdgeInsets.symmetric(
                            horizontal: 30, vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Text(
                          "\$8.24",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          padding:  EdgeInsets.symmetric(
                              horizontal: 40, vertical: 16),
                        ),
                        child:  Text(
                          "ORDER NOW",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
           ),
            );
  }
}

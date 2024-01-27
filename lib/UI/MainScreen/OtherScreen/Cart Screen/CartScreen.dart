import 'package:copy/Component/Cart%20Compolent/CartScreenOne/Cart%20Screen%20One.dart';
import 'package:copy/Component/Cart%20Compolent/CartScreenTwo/Cart%20Screen%20Two.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Component/Button/Button.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {


List CartPRoduct=[
    {
      "name":"laptopcjwj veivbremkvjwhv nhpinvj v rwhv[ rrv]",
      "image":"assets/image/product/product2/Laptop1.jpg",
      "price":"2000000",
      "Quntaty":"6",

    },
     {
      "name":"PC",
      "image":"assets/image/product/product2/PC1.jpg",
      "price":"3000000",
      "Quntaty":"2",

    },
      {
      "name":"PC",
      "image":"assets/image/product/product2/PC1.jpg",
      "price":"3000000",
      "Quntaty":"2",

    },
  {
    "name":"PC",
    "image":"assets/image/product/product2/PC1.jpg",
    "price":"3000000",
    "Quntaty":"2",

  },
  {
    "name":"PC",
    "image":"assets/image/product/product2/PC1.jpg",
    "price":"3000000",
    "Quntaty":"2",

  },
  {
    "name":"PC",
    "image":"assets/image/product/product2/PC1.jpg",
    "price":"3000000",
    "Quntaty":"2",

  },

  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        
        title: Row(
        children: [
          SizedBox(
            width: 208,
          ),
          Text("Cart",style: GoogleFonts.roboto(fontSize: 21),),
          Text("(0)",style: GoogleFonts.roboto(fontSize: 15),)
        ],
              ),
      actions: [
        IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.trashCan,size: 19,)),
        SizedBox(width: 20,),
      ],
      centerTitle: true,),
      body: CartPRoduct.isEmpty? CartScreenOne():
       Container(
         color: Colors.white ,
         child: Column(

           children: [
             Expanded(
               child: ListView.builder(
                 shrinkWrap: true,
                 itemCount: CartPRoduct.length,
                 itemBuilder: (context,index){
                 return CartScreenTwo(
                   image: CartPRoduct[index]["image"],
                   name:CartPRoduct[index]["name"] ,
                   price: CartPRoduct[index]["price"],
                 );
               }),
             ),

             Container(
               height: 250,
               width: double.infinity,
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                 child:  Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("SubTotal",style:TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                         Text("\$ " +"228",style:TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                       ],
                     ),
                     SizedBox(height: 5,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("Flat rate",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.grey.shade400),),
                         Text("\$ " +"0.00",style:TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.grey.shade400),),
                       ],
                     ),
                     SizedBox(
                       height: 20,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("Tex",style:TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                         Text("\$ " +"0.00",style:TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                       ],
                     ),SizedBox(height: 5,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("Total",style:TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                         Text("\$ " +"228",style:TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                       ],
                     ),
                     SizedBox(height: 20,),
                     button(
                       onClick: (){},
                       title: "Proceed to Chackout",

                     )
                   ],
                 ),
               ),
             )

           ],
         ),
       )
    );
  }
}
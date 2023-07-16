import 'package:final_defense_project/Order%20system/order_address.dart';
import 'package:final_defense_project/Model/review_cart_model.dart';
import 'package:final_defense_project/Provider/review_cart_provider.dart';
import 'package:final_defense_project/Widget/single_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import 'Order system/place_order_state.dart';

class reviewCart extends StatelessWidget {
  const reviewCart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ReviewCartProvider reviewCartProvider = Provider.of(context);
    reviewCartProvider.getRevieCartData();

    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text("Total Amount"),
        subtitle: Text(
          "${reviewCartProvider.getTotalPrice()} TK",
          style: TextStyle(color: Colors.green[900]),
        ),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            child: Text("Submit Order",style: TextStyle(fontSize: 18),),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> orderAddress()));
            },
            color: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Review Cart",
          style: TextStyle(color: Colors.black,fontSize: 18),
        ),
      ),
      body: ListView.builder(
        itemCount: reviewCartProvider.getReviewCartDataList.length,
        itemBuilder: (context,index){
          ReviewCartModel data = reviewCartProvider.getReviewCartDataList[index];
          return Column(
            children: [
              SizedBox(height: 10,),
              singleItem(
                isbool: true,
                productImage: data.cartImage,
                productName: data.cartName,
                productPrice: data.cartPrice,
                productQuantity: data.cartQuantity,
                productId: data.cartID,
                index: index,
                productStock: 1,
              )
            ],
          );
        },
        // children: [
        //   SizedBox(height: 10,),
        //   singleItem(
        //     isbool: true,
        //     productImage: "",
        //     productName: "",
        //     productPrice: 1,
        //     productQuantity: 1,
        //     productId: "",
        //   )
        // ],
      ),
    );
  }
}

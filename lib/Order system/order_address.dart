

import 'package:final_defense_project/Const/const.dart';
import 'package:final_defense_project/Order%20system/place_order_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';


class orderAddress extends StatelessWidget {
  //const orderAddress({Key? key}) : super(key: key);
  bool online = false;
  int flag =0;
  EdgeInsets padding = const EdgeInsets.only(left: 40);
  var placeOrderState = Get.put(PlaceOrderController());
  @override
  Widget build(BuildContext context) {
    Bkash_val == COD_VAl ? online = true: online = false;
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: ListTile(
            title: Container(
              width: 160,
              child: MaterialButton(
                child: Text("Place Order",style: TextStyle(fontSize: 18),),
                onPressed: (){
                  flag == 1 ? Fluttertoast.showToast(msg: "Pleas First Confirm Payment")
                      : Fluttertoast.showToast(msg: "Order Successfully Done");
                  //Navigator.push(context,MaterialPageRoute(builder: (context)=> reviewCart()));
                },
                color: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          appBar: AppBar(
            title: Text("Order Details",
              style: TextStyle(color: Colors.black,fontSize: 18),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "Full Name",
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                  ),
                ),
                // Expanded(child: TextField(
                //   decoration: InputDecoration(
                //     hintText: "First Name",
                //     border: OutlineInputBorder()
                //   ),
                // )),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Number",
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                  ),
                ),
                // Expanded(child: TextField(
                //   decoration: InputDecoration(
                //       hintText: "Number",
                //       border: OutlineInputBorder()
                //   ),
                // ))
                SizedBox(height: 10,),
                TextFormField(
                  maxLines: 2,
                  decoration: InputDecoration(
                      hintText: "Delivary Address",
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                  ),
                ),
                SizedBox(height: 10,),
                Obx(() => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order ID: 35682378",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 10,),
                    Text("Payment Method",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                      textAlign: TextAlign.left,
                    ),
                    RadioListTile(
                      title: Text("Cash On Delivery",style: TextStyle(fontWeight: FontWeight.bold),),
                        value: COD_VAl,
                        groupValue: placeOrderState.paymentSelected.value,
                        onChanged:(String? val){
                        flag=0;
                        online = false;
                        placeOrderState.paymentSelected.value = val!;
                    }),
                    RadioListTile(
                        title: Text("Bkash",style: TextStyle(fontWeight: FontWeight.bold),),
                        value: Bkash_val ,
                        groupValue: placeOrderState.paymentSelected.value,
                        onChanged:(String? val){
                          online = true;
                          flag=1;
                          placeOrderState.paymentSelected.value = val!;
                        }),
                    // RadioListTile(
                    //     title: Text("Nogod",style: TextStyle(fontWeight: FontWeight.bold),),
                    //     value: Nogod_val,
                    //     groupValue: placeOrderState.paymentSelected.value,
                    //     onChanged:(String? val){
                    //       placeOrderState.paymentSelected.value = val!;
                    //     }),
                    SizedBox(height: 4,),
                    online==true ? Center(
                      child: MaterialButton(
                        child: Text("Process Payment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          onPressed:(){
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              isDismissible: false,
                              context: context,
                              builder:(context){
                                return Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          IconButton(
                                              onPressed: (){
                                                Navigator.of(context).pop();
                                              },
                                              icon: Icon(Icons.clear),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("Payment Process",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Divider(
                                          color: Colors.black,
                                          thickness: 0.5,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Container(
                                          width: double.infinity,
                                          height: 50,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF2F2F2),
                                            shape: StadiumBorder(),
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "Bkash Number",
                                              border: InputBorder.none,
                                              hintStyle: TextStyle(
                                                color: Color(0xFFB6B7B7),
                                              ),
                                              contentPadding: padding,
                                            ),
                                          ),
                                        ),
                                      ),

                                      // Padding(
                                      //   padding: const EdgeInsets.symmetric(horizontal: 20),
                                      //   child: CustomTextInput(
                                      //     hintText: "Bkash Number",
                                      //   ),
                                      // ),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Container(
                                          width: double.infinity,
                                          height: 50,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF2F2F2),
                                            shape: StadiumBorder(),
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "Amount",
                                              border: InputBorder.none,
                                              hintStyle: TextStyle(
                                                color: Color(0xFFB6B7B7),
                                              ),
                                              contentPadding: padding,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Container(
                                          width: double.infinity,
                                          height: 50,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF2F2F2),
                                            shape: StadiumBorder(),
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "Verification Code",
                                              border: InputBorder.none,
                                              hintStyle: TextStyle(
                                                color: Color(0xFFB6B7B7),
                                              ),
                                              contentPadding: padding,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Container(
                                          width: double.infinity,
                                          height: 50,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF2F2F2),
                                            shape: StadiumBorder(),
                                          ),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "Pin Code",
                                              border: InputBorder.none,
                                              hintStyle: TextStyle(
                                                color: Color(0xFFB6B7B7),
                                              ),
                                              contentPadding: padding,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 30,),
                                      Center(
                                        child: MaterialButton(
                                          color: Colors.lightBlueAccent,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30),
                                          ),
                                          child: Text("Confirm Payment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                          onPressed: (){
                                            flag=0;
                                            Fluttertoast.showToast(msg: "Payment Successfully Done");
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      )

                                    ],
                                  ),
                                );
                          });
                          },
                        color: Colors.lightBlueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ): Container(),
                  ],
                )
                )
              ],
            ),
          ),
        )
    );
  }
}

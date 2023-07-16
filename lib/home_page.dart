
import 'package:final_defense_project/menu_bar.dart';
import 'package:final_defense_project/Order%20system/order_medicine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        drawer:  menubar(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('My Pharmacy'),
          // leading: BackButton(
          //   onPressed:(){
          //     Navigator.push(context,MaterialPageRoute(builder: (context)=> sidebar()));
          //   },
          // ),
          //backgroundColor: Colors.transparent,
          //elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(image: AssetImage("assets/gif.gif"),height: 240,width: 400,fit: BoxFit.cover),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 22,),
                  Center(
                    //heightFactor: 1.5,
                    child: Material(
                      color: Colors.lightBlue,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(8),
                      clipBehavior: Clip.antiAliasWithSaveLayer,

                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> orderMedicine()));
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                                image: AssetImage('assets/order.png'),height: 65,width: 75,fit: BoxFit.cover,),
                            //SizedBox(height: 10,),
                            Text('       Order\n    Medicine     ', style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 30,),
                  Center(
                    //heightFactor: 1.5,
                    child: Material(
                      color: Colors.lightBlue,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(8),
                      clipBehavior: Clip.antiAliasWithSaveLayer,

                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){

                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: AssetImage('assets/medi_info.png'),height: 65,width: 75,fit: BoxFit.cover,),
                            //SizedBox(height: 10,),
                            Text('     Medicine\n   Information   ', style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 26,),
                  Center(
                    //heightFactor: 1.5,
                    child: Material(
                      color: Colors.lightBlue,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(8),
                      clipBehavior: Clip.antiAliasWithSaveLayer,

                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){

                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: AssetImage('assets/m_acc.jpg'),height: 65,width: 75,fit: BoxFit.cover,),
                            //SizedBox(height: 10,),
                            Text('Order Medical\n  Accessories', style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                children: [
                  SizedBox(width: 25,),
                  Center(
                    child: Material(
                      color: Colors.lightBlue,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(8),
                      clipBehavior: Clip.antiAliasWithSaveLayer,

                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){

                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: AssetImage('assets/doc.png'),height: 67,width: 85,fit: BoxFit.cover,),
                            //SizedBox(height: 10,),
                            Text('      Doctor\n Appointment ', style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 30,),
                  Center(
                    child: Material(
                      color: Colors.lightBlue,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(8),
                      clipBehavior: Clip.antiAliasWithSaveLayer,

                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){

                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 12,),
                            Ink.image(
                              image: AssetImage('assets/ambulance.png'),height: 60,width: 100,fit: BoxFit.cover,),
                            SizedBox(height: 12,),
                            Text('Ambulance', style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 26,),
                  Center(
                    child: Material(
                      color: Colors.lightBlue,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(8),
                      clipBehavior: Clip.antiAliasWithSaveLayer,

                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){

                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: AssetImage('assets/alarm.png'),height: 67,width: 72,fit: BoxFit.cover,),
                            //SizedBox(height: 10,),
                            Text('    Medicine    \n      Alarm', style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 50,),
              Row(
                children: [
                  SizedBox(width: 25,),
                  Center(
                    child: Material(
                      color: Colors.lightBlue,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(8),
                      clipBehavior: Clip.antiAliasWithSaveLayer,

                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){

                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: AssetImage('assets/telimedicine.png'),height: 76,width: 75,fit: BoxFit.cover,),
                            //SizedBox(height: 10,),
                            Text(' Telimedicine\nConsultations', style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 30,),
                  Center(
                    child: Material(
                      color: Colors.lightBlue,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(8),
                      clipBehavior: Clip.antiAliasWithSaveLayer,

                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){

                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Ink.image(
                              image: AssetImage('assets/med_dis.png'),height: 80,width: 85,fit: BoxFit.cover,),
                            //SizedBox(height: 10,),
                            Text('     Medicine\n Disposal Guide ', style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 26,),
                  Center(
                    child: Material(
                      color: Colors.lightBlue,
                      elevation: 8,
                      borderRadius: BorderRadius.circular(8),
                      clipBehavior: Clip.antiAliasWithSaveLayer,

                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: (){

                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 10,),
                            Ink.image(
                              image: AssetImage('assets/health.png'),height: 85,width: 85,fit: BoxFit.cover,),
                            //SizedBox(height: 10,),
                            Text('  Health Tips  ', style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )

              // ElevatedButton(
              //   child: Text('Log-out'),
              //   onPressed: (){
              //     Navigator.push(context,MaterialPageRoute(builder: (context)=> Login()));
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}

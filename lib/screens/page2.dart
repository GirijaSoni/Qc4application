
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


//import 'package:bottom_navigation_bar/home_screen.dart';

class favouritesPage extends StatefulWidget {
  @override
  _favouritesPageState createState() => _favouritesPageState();
}

class _favouritesPageState extends State<favouritesPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75),bottomRight: Radius.circular(75)),
            child:  Container(
              height: MediaQuery.of(context).size.height*0.4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end:
                  Alignment.bottomCenter, // 10% of the width, so there are ten blinds.
                  colors: [
                    const Color(0xff9979fe),
                    const Color(0xff774bff)
                  ], // red to yellow
                ),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top:55,left: 40),
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(right:60,left: 0),
                                child:Align(alignment: Alignment.topLeft,
                                    child:Text("Total Balance",textAlign:TextAlign.left,style: TextStyle(color: Colors.white,fontSize:16,fontWeight: FontWeight.w300),))
                            ),
                            Padding(
                                padding: EdgeInsets.only(top:10,left: 0),
                                child:Text("Rp9.000.0000",textAlign:TextAlign.left,style: TextStyle(color: Colors.white,fontSize:25,fontWeight: FontWeight.w600),)
                            )
                          ],

                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:100,top:35),
                        child: CircleAvatar(maxRadius:30,child:Icon(Icons.person)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left:40,top:50),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child:  Container(
                                height: MediaQuery.of(context).size.height*0.13,
                                width: MediaQuery.of(context).size.width*0.39,
                                decoration: BoxDecoration(
                                    color: Color(0xff01a870)

                                ),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(left: 12,top:20,right: 30),
                                        child:Align(alignment: Alignment.topLeft,
                                            child:Text("Monthly Income",textAlign:TextAlign.left,style: TextStyle(color: Colors.white,fontSize:12,fontWeight: FontWeight.w300),))
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(top:10,right: 30,),
                                        child:Text("Rp1.200.0000",textAlign:TextAlign.left,style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.w800),)
                                    )
                                  ],

                                ),
                              )
                          )
                      ),
                      Padding(padding: EdgeInsets.only(left:15,top:50),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child:  Container(
                                height: MediaQuery.of(context).size.height*0.13,
                                width: MediaQuery.of(context).size.width*0.39,
                                decoration: BoxDecoration(
                                    color: Color(0xfff95457)
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(left: 12,top:20,right: 30),
                                        child:Align(alignment: Alignment.topLeft,
                                            child:Text("Monthly Spending",textAlign:TextAlign.left,style: TextStyle(color: Colors.white,fontSize:12,fontWeight: FontWeight.w300),))
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(top:10,right: 50,),
                                        child:Text("Rp200.0000",textAlign:TextAlign.left,style: TextStyle(color: Colors.white,fontSize:14,fontWeight: FontWeight.w800),)
                                    )
                                  ],

                                ),
                              )
                          ))
                    ],
                  )

                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:300,left:20),
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

                child:
                Container(
                  height: MediaQuery.of(context).size.height*0.095,
                  width: MediaQuery.of(context).size.width*0.85,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left:25,top:10),
                        child:Column(
                          children: <Widget>[
                            Icon(Icons.account_balance_wallet,size: 45,color: Color(0xff9e7bff),),
                            Text("Top Up")
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:70,top:10),
                        child:Column(
                          children: <Widget>[
                            Icon(Icons.send,size: 45,color: Color(0xff9e7bff),),
                            Text("Transfer")
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          showModalBottomSheet<dynamic>(
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext bc){
                                return Container(
                                  child: new Wrap(
                                    children: <Widget>[
                                      Padding(padding: EdgeInsets.only(left: 20,top: 30),
                                        child: ListTile(
                                          title: Text("Select Payable Amount",style: TextStyle(fontSize: 30),),
                                          subtitle:Text("Move the slider to select your payable amount",style: TextStyle(fontSize: 15),),
                                        ),
                                      ),

                                      Padding(padding: EdgeInsets.only(top: 20,right: 10,left: 10,bottom: 20),
                                        child:Container(
                                          padding: EdgeInsets.all(10),
                                          width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color: Colors.white,

                                            borderRadius: BorderRadiusDirectional.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 1,
                                              )
                                            ],
                                          ),
                                          child: Text("RP 12000"),) ,),
                                      SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                          activeTrackColor: Colors.purple,
                                          inactiveTrackColor: Colors.purple.withOpacity(0.5),
                                          trackHeight: 4.0,
                                          thumbShape:
                                          RoundSliderThumbShape(enabledThumbRadius: 10.0),
                                          thumbColor: Colors.purple,
                                          overlayColor: Colors.red.withAlpha(32),
                                          overlayShape:
                                          RoundSliderOverlayShape(overlayRadius: 14.0),
                                          activeTickMarkColor: Colors.purple,
                                          inactiveTickMarkColor: Colors.purple.withOpacity(0.5),
                                          valueIndicatorShape:
                                          PaddleSliderValueIndicatorShape(),
                                          valueIndicatorColor: Colors.purple,

                                          valueIndicatorTextStyle: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        child: Slider(
                                          value: 5.0,
                                          min: 0.0,
                                          max: 10.0,
                                          divisions: 10,

                                          onChanged: (double value) {
                                            setState(
                                                  () {
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                      ListTile(
                                        leading: Text("My Balance",style: TextStyle(color: Colors.grey),),
                                        trailing: Text("Rp 92000",style: TextStyle(color: Colors.black)),

                                      ),
                                      new ListTile(
                                        title: new Text('Select Category',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                      ),

                                      new ListTile(

                                        title: new Text('Description',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),

                                      ),
                                      Padding(padding: EdgeInsets.only(left: 15,right: 15),child:
                                      TextFormField(
                                          decoration: InputDecoration(
                                              hintText: "Buy BBQ steak",
                                              hintStyle: TextStyle(
                                                color: Colors.black,
                                              )
                                          )
                                      ),),
                                      Padding(padding: EdgeInsets.only(top: 20,bottom: 20),
                                        child: Row(
                                          children:<Widget> [
                                            SizedBox(width: MediaQuery.of(context).size.width*0.45,height: 50,
                                              child:OutlineButton(
                                                color: Colors.red,
                                                child: Text("Cancel"),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                                onPressed: (){

                                                },
                                              ),),

                                            SizedBox(width: 30,),
                                            SizedBox(width: MediaQuery.of(context).size.width*0.45,height: 50,
                                              child:RaisedButton(
                                                color: Colors.green,
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                                child: Text("Create Payment"),
                                                onPressed: (){

                                                },
                                              ),),
                                          ],
                                        ),),

                                      SizedBox(height: 10,)
                                    ],
                                  ),
                                );
                              }
                          );
                        },
                        child:Padding(
                        padding: EdgeInsets.only(left:70,top:10),
                        child:Column(
                          children: <Widget>[
                            Icon(Icons.payment,size: 45,color: Color(0xff9e7bff),),
                            Text("Payment")
                          ],
                        ),
                      )
                      )
                    ],
                  ),
                )
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top:400,left:30),
              child:Row(
                children: <Widget>[
                  Text("Today Transactions",style: TextStyle(fontSize:20,fontWeight: FontWeight.w900),),
                  Padding(
                      padding: EdgeInsets.only(left:100),
                      child:Text(
                        "See All",
                        style: TextStyle(
                            color: Color(0xff9e7bff),
                            decoration: TextDecoration.underline
                        ),
                      )
                  )

                ],
              )
          ),
          Padding(
              padding: EdgeInsets.only(top:440,left:30),
              child:Container(
                  height: 35,
                  child:ListView(
                    scrollDirection:Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right:10),
                        child:SizedBox(
                          width: 60,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Color(0xff9b7bff),
                            textColor: Colors.white,
                            padding: EdgeInsets.all(8.0),
                            onPressed: () {},
                            child: Text(
                              "All",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right:10),
                        child:SizedBox(
                          width: 70,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Color(0xffd2d2d2),
                            textColor: Color(0xffabb4b9),
                            padding: EdgeInsets.all(8.0),
                            onPressed: () {},
                            child: Text(
                              "Food",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right:10),
                        child:SizedBox(
                          width: 100,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Color(0xffd2d2d2),
                            textColor: Color(0xffabb4b9),
                            padding: EdgeInsets.all(8.0),
                            onPressed: () {},
                            child: Text(
                              "Shopping",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right:10),
                        child:SizedBox(
                          width: 60,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Color(0xffd2d2d2),
                            textColor: Color(0xffabb4b9),
                            padding: EdgeInsets.all(8.0),
                            onPressed: () {},
                            child: Text(
                              "Rent",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right:10),
                        child:SizedBox(
                          width: 60,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            color: Color(0xffd2d2d2),
                            textColor: Color(0xffabb4b9),
                            padding: EdgeInsets.all(8.0),
                            onPressed: () {},
                            child: Text(
                              "Health",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ),





                    ],
                  )
              )
          ),
          Padding(
              padding: EdgeInsets.only(left:40,top:490),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child:Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height*0.34,
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left:20,top:20),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child:Container(
                                    width: 50,
                                    height: 50,
                                    color:Color(0xffff5c5c),
                                    child:Icon(Icons.fastfood,color: Colors.white,size:30,)
                                )
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(top:15,left: 10),
                                  child:Text("Coffee Latte",textAlign:TextAlign.left,style: TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.w800),)
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top:5,left: 10),
                                  child:Align(alignment: Alignment.topLeft,
                                      child:Text("Today, 10:00 am",textAlign:TextAlign.left,style: TextStyle(color: Colors.black,fontSize:14,fontWeight: FontWeight.w300),))
                              )
                            ],

                          ),
                          Padding(
                              padding: EdgeInsets.only(left:35),
                              child:Text("- Rp25.000",
                                style: TextStyle(
                                    color: Color(0xfffe6a6a),
                                    fontWeight: FontWeight.bold
                                ),)
                          )
                        ],
                      ),
                      Divider(),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left:20,top:0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child:Container(
                                    width: 50,
                                    height: 50,
                                    color:Color(0xff00b26f),
                                    child:Icon(Icons.directions_car,color: Colors.white,size:30,)
                                )
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(top:0,left: 0),
                                  child:Text("Online Taxi",textAlign:TextAlign.left,style: TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.w800),)
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top:5,left: 10),
                                  child:Align(alignment: Alignment.topLeft,
                                      child:Text("Today, 10:30 am",textAlign:TextAlign.left,style: TextStyle(color: Colors.black,fontSize:14,fontWeight: FontWeight.w300),))
                              )
                            ],

                          ),
                          Padding(
                              padding: EdgeInsets.only(left:35),
                              child:Text("+ Rp50.000",
                                style: TextStyle(
                                    color: Color(0xff00b26f),
                                    fontWeight: FontWeight.bold
                                ),)
                          )
                        ],
                      ),
                      Divider(),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left:20,top:0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child:Container(
                                    width: 50,
                                    height: 50,
                                    color:Color(0xffff5c5c),
                                    child:Icon(Icons.fastfood,color: Colors.white,size:30,)
                                )
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(top:0,right: 40),
                                  child:Text("Lunch",textAlign:TextAlign.left,style: TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.w800),)
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top:5,left: 10),
                                  child:Align(alignment: Alignment.topLeft,
                                      child:Text("Today, 13:00 pm",textAlign:TextAlign.left,style: TextStyle(color: Colors.black,fontSize:14,fontWeight: FontWeight.w300),))
                              )
                            ],

                          ),
                          Padding(
                              padding: EdgeInsets.only(left:35),
                              child:Text("- Rp15.000",
                                style: TextStyle(
                                    color: Color(0xfffe6a6a),
                                    fontWeight: FontWeight.bold
                                ),)
                          )
                        ],
                      ),
                      Divider(),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left:20,top:0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child:Container(
                                    width: 50,
                                    height: 50,
                                    color:Color(0xff9b7bff),
                                    child:Icon(Icons.credit_card,color: Colors.white,size:30,)
                                )
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(top:0,left: 10),
                                  child:Text("Bank Transfer",textAlign:TextAlign.left,style: TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.w800),)
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top:5,left: 0),
                                  child:Align(alignment: Alignment.topLeft,
                                      child:Text("Today, 13:00 pm",textAlign:TextAlign.left,style: TextStyle(color: Colors.black,fontSize:14,fontWeight: FontWeight.w300),))
                              )
                            ],

                          ),
                          Padding(
                              padding: EdgeInsets.only(left:25),
                              child:Text("- Rp90.000",
                                style: TextStyle(
                                    color: Color(0xfffe6a6a),
                                    fontWeight: FontWeight.bold
                                ),)
                          )
                        ],
                      ),
                    ],
                  ),
                ) ,
              )
          )


        ],),
    );
  }
}

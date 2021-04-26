import 'package:flutter/material.dart';
import 'package:incubator_iot/cardView.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Mk01 Incubator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:16.0,right: 16.0),
        child: ListView(
          children: [
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Electricity Consumption",style: TextStyle(color: Colors.grey,fontSize: 16),),
                Text("Approx Bill",style: TextStyle(color: Colors.grey,fontSize: 16)),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("100kWh",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Text("1000Tsh",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Gas Consumption",style: TextStyle(color: Colors.grey,fontSize: 16)),
                Text("Approx Bill",style: TextStyle(color: Colors.grey,fontSize: 16)),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("10m3",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Text("1000Tsh",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

              ],
            ),
            Divider(),
            Text("Incubator Overview",style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            // Row(
            //   children: [
            //     Text("Incubating: ",style: TextStyle(fontSize: 16),),
            //     Text("Quail",style: TextStyle(fontSize: 16),),
            //   ],
            // ),
            Row(
              children: [
                Text("Incubator Status: ",style: TextStyle(fontSize: 16),),
                Text("Active",style: TextStyle(fontSize: 16),),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Text("power Priority: ",style: TextStyle(fontSize: 16),),
                Text("Gas",style: TextStyle(fontSize: 16),),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Text("Incubation Days: ",style: TextStyle(fontSize: 16),),
                Text("18 day(s)",style: TextStyle(fontSize: 16),),

              ],
            ),
            Row(
              children: [
                Text("Hatching Days: ",style: TextStyle(fontSize: 16),),
                Text("3 day(s)",style: TextStyle(fontSize: 16),),

              ],
            ),
            Row(
              children: [
                Text("Egg turn Countdown: "),
                Text(" 1 hr",style: TextStyle(fontSize: 16),),
                Text(" 30 min",style: TextStyle(fontSize: 16),),
                Text(" 30 sec",style: TextStyle(fontSize: 16),),
              ],
            ),
            Row(
              children: [
                Text("Inside Fans Status: ",style: TextStyle(fontSize: 16),),
                Text("Active",style: TextStyle(fontSize: 16),),
              ],
            ),
            Row(
              children: [
                Text("Exhaust Fans Status: ",style: TextStyle(fontSize: 16),),
                Text("Active",style: TextStyle(fontSize: 16),),
              ],
            ),
            Row(
              children: [
                Text("Gas Heater Status: ",style: TextStyle(fontSize: 16),),
                Text("Active",style: TextStyle(fontSize: 16),),
              ],
            ),
            Row(
              children: [
                Text("Electric Heater Status: ",style: TextStyle(fontSize: 16),),
                Text("Active",style: TextStyle(fontSize: 16),),
              ],
            ),
            Divider(),
            Container(
              width: MediaQuery.of(context).size.width,

              child: GridView.count(crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 1.0,
                
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              children: List.generate(4, (index) {
                    return new GridTile(
                      child: CardView(),
                    );
                  }),),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

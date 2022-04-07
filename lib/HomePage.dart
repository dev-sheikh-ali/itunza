import 'package:flutter/material.dart';

import 'MyAlert.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  get bold => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Center(
          child: Text(
            "Home",
            style: TextStyle(fontSize: 18, color: Colors.white70),
          ),
        ),
        elevation: 10,
        backgroundColor: Colors.green,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                 onTap: () {
                             showAlertDialog(context); 
                          },
                child: Icon(
                  Icons.notifications,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap:  () {
                             showAlertDialog(context); 
                          },
                child: Icon(Icons.more_vert),
              )),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'asset/images/logo.png',
                    width: 80,
                    height: 80,
                    
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Mr Ali Sheikh",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.green[50],
               
              ),
            ),
            ListTile(
              
              leading: Icon(Icons.person_add_alt_rounded),
              title: Text('Register'),
              onTap:  () {
                             showAlertDialog(context); 
                          },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('profile'),
              onTap:() {
                             showAlertDialog(context); 
                          },
            ),
            ListTile(
              leading: Icon(Icons.event_note_rounded),
              title: Text('events'),
              onTap:  () {
                             showAlertDialog(context); 
                          },
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('contact us'),
              onTap: () {
                             showAlertDialog(context); 
                          },),
            ListTile(
              leading: Icon(Icons.info_sharp),
              title: Text('information'),
              onTap:  () {
                             showAlertDialog(context); 
                          },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('logout'),
              onTap:  () {
                             showAlertDialog(context); 
                          },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Jambo Mr.Ali',
            style: TextStyle(fontSize: 20.0, color: Colors.black),
            textAlign: TextAlign.left,
          ),
          Container(
            height: 250,
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhLgnsC3URh7wYmKf8wYgkh2gDpnyBXG7N6OGAh77JNOLaHp9xX1qwM8Lrp3KuGr6l9lE&usqp=CAU',
              // width: 500
            ),
          ),
           Container(
              height: 30,
              child: Text(
                "Quick Services",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
          Container(
            height: 340,
            width: 500,
            child: GridView.count(
                primary: true,
                padding: const EdgeInsets.all(2),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 4,
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        // margin: EdgeInsets.all(12.0),
                        // padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent, width: 1),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.school_rounded,
                            color: Colors.green[300],
                            size: 50.0,
                          ),
                          onPressed: () {
                             showAlertDialog(context); 
                          },
                        ),
                      ),
                      Text(
                        "School",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: bold),
                      ),
                    ],
                  ),
                Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        // margin: EdgeInsets.all(12.0),
                        // padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent, width: 1),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.attach_money_outlined,
                            color: Colors.green[300],
                            size: 50.0,
                          ),
                          onPressed: () {
                             showAlertDialog(context); 
                          },
                        ),
                      ),
                      Text(
                        "fees",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        // margin: EdgeInsets.all(12.0),
                        // padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent, width: 1),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.emoji_events_rounded,
                            color: Colors.green[300],
                            size: 50.0,
                          ),
                           onPressed: () {
                             showAlertDialog(context); 
                          },
                        ),
                      ),
                      Text(
                        "Results",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        // margin: EdgeInsets.all(12.0),
                        // padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent, width: 1),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                             Icons.grading_rounded,
                            
                            color: Colors.green[300],
                            size: 50.0,
                          ),
                           onPressed: () {
                             showAlertDialog(context); 
                          },
                        ),
                      ),
                      Text(
                        "attendance",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: bold),
                      ),
                    ],
                  ),
                 Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        // margin: EdgeInsets.all(12.0),
                        // padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent, width: 1),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.list_rounded,
                            color: Colors.green[300],
                            size: 50.0,
                          ),
                          onPressed: () {
                             showAlertDialog(context); 
                          },
                        ),
                      ),
                      Text(
                        "Timetable",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        // margin: EdgeInsets.all(12.0),
                        // padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent, width: 1),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.fastfood_rounded,
                            color: Colors.green[300],
                            size: 50.0,
                          ),
                          onPressed: () {
                             showAlertDialog(context); 
                          },
                        ),
                      ),
                      Text(
                        "meals",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        // margin: EdgeInsets.all(12.0),
                        // padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent, width: 1),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.developer_board_sharp,
                            color: Colors.green[300],
                            size: 50.0,
                          ),
                           onPressed: () {
                             showAlertDialog(context); 
                          },
                        ),
                      ),
                      Text(
                        "lessons",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        // margin: EdgeInsets.all(12.0),
                        // padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent, width: 1),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.message_rounded,
                            color: Colors.green[300],
                            size: 50.0,
                          ),
                           onPressed: () {
                             showAlertDialog(context); 
                          },
                        ),
                      ),
                      Text(
                        "messages",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        // margin: EdgeInsets.all(12.0),
                        // padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent, width: 1),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.health_and_safety_rounded,
                            color: Colors.green[200],
                            size: 50.0,
                          ),
                          onPressed: () {
                             showAlertDialog(context); 
                          },
                        ),
                      ),
                      Text(
                        "Health",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        // margin: EdgeInsets.all(12.0),
                        // padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.greenAccent, width: 1),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.image_rounded,
                            color: Colors.green[200],
                            size: 50.0,
                          ),
                          onPressed: () {
                             showAlertDialog(context); 
                          },
                        ),
                      ),
                      Text(
                        "Gallery",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: bold),
                      ),
                    ],
                  ),
                  
                ]),
          ),
          Text(
            " © iTunza ventures 2021 \n   \n \t\t\t\t www.itunza.co.ke",
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text("This is Profile page"),
//     );
//   }
// }

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurpleAccent,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.deepPurpleAccent,
                    Colors.purple,
                  ]
                )
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2.0),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://64.media.tumblr.com/01e33dfa2edc2ad7069567262bffe7b3/tumblr_pf3ryqq7So1v5pqjv_540.png"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        "Robyn Fenty",
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21.0,
                          color: Colors.white),
                      ),
                      SizedBox(height: 13.0),
                      Text(
                        "Contagious Sites Visited: X/8",
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.white54),
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        "Previous Locations",
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Colors.white),
                      ),
                      // MaterialButton(
                      //   onPressed: () {},
                      //   color: Colors.black87,
                      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                      //   child: Text("Button",
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.white,
                      //     )),
                      // )
                    ],
                ),
            ),
            Align(
              alignment: Alignment(1.4, -1.25),
              child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white30,
                ),
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.settings, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:250.0),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                )
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 250.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) => Card(
                    child: Container(
                      margin: EdgeInsets.all(4.0),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            Icons.local_hospital,
                            size: 90,
                          ),
                          Text(
                            "Corona Virus",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

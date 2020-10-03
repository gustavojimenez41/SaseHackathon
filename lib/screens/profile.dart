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
                padding: EdgeInsets.only(top: 16.0),
                child: Row(
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
                )
            ),
          ],
        ),
      ),
    );
  }
}

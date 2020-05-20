import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: double.infinity),
            Container(
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/corona_virus.png'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'CORONA',
                        style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF00EEF5)),
                      ),
                      Text(
                        'VIRUS',
                        style: TextStyle(
                          fontSize: 35.0,
                          color: Color(0xFF00EEF5),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Information App',
                    style: TextStyle(
                      color: Color(0xFF34F2F8),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Image(
                    image: AssetImage('assets/images/world_map.png'),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Image(image: AssetImage('assets/images/doctor.png')),
                  SizedBox(
                    height: 25.0,
                  ),
                  InkWell(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF79D6DD),
                          width: 5.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        'GET STARTED',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(
              left: 50.0,
              top: MediaQuery.of(context).padding.top + 15.0,
              bottom: 85.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Covid-19 Tracker',
                style: TextStyle(color: Color(0xFFE6E6E6)),
              ),
              Text(
                'Asia',
                style: TextStyle(color: Color(0xFF00EEF5), fontSize: 18.0),
              ),
              Text(
                'Nepal',
                style: TextStyle(color: Color(0xFF00EEF5), fontSize: 28.0),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30.0),
              ),
            ),
            child: Transform.translate(
              offset: Offset(0.0, -80.0),
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Last Updated 1 hour ago',
                        style: TextStyle(color: Color(0xFFE6E6E6)),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      CoronaStatBoxesContainer(),
                    ],
                  ),
                  SizedBox(height: 40.0),
                  StatesUpdate(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CoronaStatBoxesContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 120.0,
                width: 120.0,
                child: CoronaStatBox(),
              ),
              SizedBox(width: 10.0),
              Container(
                height: 120.0,
                width: 120.0,
                child: CoronaStatBox(),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 120.0,
                width: 120.0,
                child: CoronaStatBox(),
              ),
              SizedBox(width: 10.0),
              Container(
                height: 120.0,
                width: 120.0,
                child: CoronaStatBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CoronaStatBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
                color: Color(0x8F548A97),
                blurRadius: 10.0,
                offset: Offset(0.0, 3.0))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10.0, left: 10.0, bottom: 5.0),
            child: Text(
              'Confirmed',
              style: TextStyle(
                  color: Color(0xFF8F9CAF),
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 25.0),
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadiusDirectional.horizontal(
                  end: Radius.circular(50.0)),
            ),
            child: Text(
              '295',
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}

class StatesUpdate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: SingleChildScrollView(
        child: Table(
          columnWidths: {0: FractionColumnWidth(0.37)},
          children: [
            TableRow(
              children: [
                _buildTalbeCell(
                    text: 'State', weight: FontWeight.bold, shadow: true),
                _buildTalbeCell(
                    text: 'C',
                    color: Colors.red,
                    weight: FontWeight.bold,
                    shadow: true),
                _buildTalbeCell(
                    text: 'A',
                    color: Colors.blue,
                    weight: FontWeight.bold,
                    shadow: true),
                _buildTalbeCell(
                    text: 'R',
                    color: Colors.green,
                    weight: FontWeight.bold,
                    shadow: true),
                _buildTalbeCell(
                    text: 'D', weight: FontWeight.bold, shadow: true),
              ],
            ),
            TableRow(
              children: [
                _buildTalbeCell(text: 'State #1', weight: FontWeight.bold),
                _buildTalbeCell(text: '1235', color: Colors.red),
                _buildTalbeCell(text: '19', color: Colors.blue),
                _buildTalbeCell(text: '16', color: Colors.green),
                _buildTalbeCell(text: '-'),
              ],
            ),
            TableRow(
              children: [
                _buildTalbeCell(text: 'State #2', weight: FontWeight.bold),
                _buildTalbeCell(text: '35', color: Colors.red),
                _buildTalbeCell(text: '19', color: Colors.blue),
                _buildTalbeCell(text: '16', color: Colors.green),
                _buildTalbeCell(text: '-'),
              ],
            ),
            TableRow(
              children: [
                _buildTalbeCell(text: 'State #3', weight: FontWeight.bold),
                _buildTalbeCell(text: '35', color: Colors.red),
                _buildTalbeCell(text: '19', color: Colors.blue),
                _buildTalbeCell(text: '16', color: Colors.green),
                _buildTalbeCell(text: '-'),
              ],
            ),
            TableRow(
              children: [
                _buildTalbeCell(text: 'State #4', weight: FontWeight.bold),
                _buildTalbeCell(text: '35', color: Colors.red),
                _buildTalbeCell(text: '19', color: Colors.blue),
                _buildTalbeCell(text: '16', color: Colors.green),
                _buildTalbeCell(text: '-'),
              ],
            ),
            TableRow(
              children: [
                _buildTalbeCell(text: 'State #5', weight: FontWeight.bold),
                _buildTalbeCell(text: '35', color: Colors.red),
                _buildTalbeCell(text: '19', color: Colors.blue),
                _buildTalbeCell(text: '16', color: Colors.green),
                _buildTalbeCell(text: '-'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTalbeCell(
      {String text,
      Color color: const Color(0xFF717981),
      weight: FontWeight.w300,
      bool shadow: false}) {
    return Container(
      margin: EdgeInsets.all(3.0),
      padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 5.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: color, fontWeight: weight),
      ),
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: shadow ? BorderRadius.circular(10.0) : null,
        boxShadow: shadow
            ? [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 1.0),
                  blurRadius: 6.0,
                )
              ]
            : null,
      ),
    );
  }
}

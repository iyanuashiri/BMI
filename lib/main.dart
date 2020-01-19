import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Body Mass Index',
     theme: ThemeData(
       primarySwatch: Colors.blue        
     ),
     home: BMI(),
   ); 
  }
}


class BMI extends StatefulWidget {
  @override
  BMIState createState() => BMIState();
  
}


class BMIState extends State<BMI> {

  int _answer;

  final heightController = TextEditingController();
  final weightController = TextEditingController();

  void _calculateBMI() {
    var height = int.parse(heightController.text);
    var weight = int.parse(weightController.text);

    _answer = (height / weight) as int;

    setState(() {
      _answer = _answer;
    });    
  }

  @override
  void dispose() {
    heightController.dispose();
    weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Body Mass Index Calculator'),
          ),
          body: Column(
//             mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                controller: weightController,
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Weight'),
                keyboardType: TextInputType.number,
              ),
    
              TextField(
                controller: heightController,
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Height'),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
    
              Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.healing),
                        title: Text('$_answer'),
                        subtitle: Text('You need to be careful with what you eat'),
                      )
                    ],

                  )
            ),
          )

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _calculateBMI,
        child: Text('Calculate'),        
      ),
    );
  }


  
}


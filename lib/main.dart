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

  var _answer = 12;
  var _status = 'Welcome';

  final heightController = TextEditingController();
  final weightController = TextEditingController();

  void _calculateBMI() {
    var height = double.parse(heightController.text);
    var weight = int.parse(weightController.text);

    var heightSquare = height * height;

    _answer = weight ~/ heightSquare;
    
    if (_answer > 19 || _answer <= 25 ) {
      _status = 'Healthy';  
    } else if (_answer >= 26 || _answer <= 30) {
      _status = 'Overweight';      
    } else if (_answer >= 31 ) {
      _status = 'Obese';
    } else if (_answer < 19) {
      _status = 'Underweight';
    }

    setState(() {
      _answer = _answer;
      _status = _status;
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
            title: Text('Check BMI'),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.network(
                'https://www.animatedimages.org/data/media/523/animated-hello-image-0018.gif'
              ),
              TextField(
                controller: weightController,
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Weight(Kg)'),
                keyboardType: TextInputType.number,
              ),
    
              TextField(
                controller: heightController,
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Height(m)'),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
    
              Center(
                child: Card(
                  color: Color(0xFF42A5F5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        title: Center(
                          child: Text('Your BMI = $_answer'),
                        ),
                        subtitle: Center(
                          child: Text('$_status'),
                        
                        )
                        
                      )
                    ],

                  )
            ),
          )

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _calculateBMI,
        child: Icon(Icons.add),        
      ),
    );
  }


  
}


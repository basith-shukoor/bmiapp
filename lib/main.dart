import 'package:flutter/material.dart';

void main() {
  runApp(const Bmi());
}

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi>
{
  TextEditingController Height=TextEditingController();
  TextEditingController Weight=TextEditingController();
  double Result=0;
  void calculate(){
    double h=double.parse(Height.text)/100;
    double w=double.parse(Weight.text);
    double bmi= w/(h*h);
     Result=bmi;
     setState(() {
     });

  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
          title: Center(child: Text("BMI CALCULATOR",)),backgroundColor: Colors.grey,

        ),

        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 50,),
              TextField(
                controller: Height,
          decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)),),
    label: Text("Height"),
            prefixIcon: Align(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Icon(
                Icons.height,size: 20,
              ),
            ),

    ),
    ),
              SizedBox(height: 20,),

              TextField(
                controller: Weight,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  label: Text("Weight"),
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.line_weight_rounded,size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(height: 40,width:100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.teal),
                  child: TextButton(onPressed: () {

                    calculate();

                  },
                    child: Text("Calculate",style: TextStyle(color: Colors.white),),)),
              SizedBox(height: 20,),

              Text("${Result.toStringAsFixed(3)}.",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

            ],
          ),
        ),



      ),
    );
  }
}

import 'dart:math';

import 'package:bmi_calculator/bmi_result_arguments.dart';
import 'package:bmi_calculator/gender_design.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Color background = Color.fromRGBO(21, 19, 60, 1.0);
  Color text = Color.fromRGBO(111, 118, 99, 1);
  Color itemBack = Color.fromRGBO(42, 37, 80, 1);
  double height = 120;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: background,
        elevation: 30,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: background,
        child: Column(
          children: [
              Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.all(20),
                    child: Row(
                      children: [
                        GenderItem(
                            genderIcon: Icons.male,
                            genderType: 'MALE',
                            isGenderMale: true,
                            fun:(){setState((){});}
                        ),
                        SizedBox(
                            width: 20
                        ),
                        GenderItem(
                            genderIcon: Icons.female,
                            genderType: 'FEMALE',
                            isGenderMale: false,
                            fun:(){setState((){});}
                        ),
                      ],
                    ),
                  )
              ),
              Expanded(
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: itemBack,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '${height.round()}',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 40
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                              ),
                            ),

                          ],
                        ),
                        Slider(
                            activeColor: text,
                            thumbColor: text,
                            inactiveColor: background,
                            value: height,
                            min: 80,
                            max: 220,
                            onChanged: (value){
                              setState((){
                                height = value;
                              });
                            }
                        )
                      ],
                    ),
                  )
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                            child:Container(
                              decoration: BoxDecoration(
                                  color: itemBack,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'AGE',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '$age',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 40
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                          onPressed: (){
                                            setState((){
                                              age++;
                                            });
                                          },
                                          heroTag: "btn1",
                                          mini: true,
                                          backgroundColor: background,
                                          child: Icon(
                                              Icons.add,
                                              color: text
                                            ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      FloatingActionButton(
                                        onPressed: (){
                                          setState((){
                                            age--;
                                          });
                                        },
                                        heroTag: "btn2",
                                        mini: true,
                                        backgroundColor: background,
                                        child: Icon(
                                            Icons.remove,
                                            color: text,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child:Container(
                              decoration: BoxDecoration(
                                  color: itemBack,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'WEIGHT',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '$weight',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 40
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed: (){
                                          setState((){
                                            weight++;
                                          });
                                        },
                                        heroTag: "btn3",
                                        mini: true,
                                        backgroundColor: background,
                                        child: Icon(
                                            Icons.add,
                                            color: text
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      FloatingActionButton(
                                        onPressed: (){
                                          setState((){
                                            weight--;
                                          });
                                        },
                                        mini: true,
                                        heroTag: "btn4",
                                        backgroundColor: background,
                                        child: Icon(
                                          Icons.remove,
                                          color: text,
                                        ),
                                      ),

                                    ],
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                  )
              ),
              Container(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                    onPressed:(){
                      var result = weight/pow(height/100, 2);
                      print(result.toStringAsFixed(1));
                      Navigator.pushNamed(
                          context, 'Result',
                          arguments: BMIResultArguments(
                              resutlBMI: result.toStringAsFixed(1) ,
                              gender: GenderItem.isMale?"Male":"Female",
                              age: age
                          )
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(253, 2, 57,1),
                    ),
                    child: Text(
                      'CALCULATE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    )
                ),
              )
          ],
        ),
      ),
    );
  }
}

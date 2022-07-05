import 'package:bmi_calculator/bmi_result_arguments.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  Color background = Color.fromRGBO(21, 19, 60, 1.0);
  Color text = Color.fromRGBO(111, 118, 99, 1);
  Color itemBack = Color.fromRGBO(42, 37, 80, 1);
  @override
  Widget build(BuildContext context) {
    final bmiArguments =  ModalRoute.of(context)?.settings.arguments as BMIResultArguments;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: background,
        elevation: 30,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsetsDirectional.all(20),
              margin: EdgeInsetsDirectional.all(20),
              decoration: BoxDecoration(
                  color: itemBack,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BMI: ${bmiArguments.resutlBMI}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Gender: ${bmiArguments.gender}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Age: ${bmiArguments.age}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

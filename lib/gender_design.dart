import 'package:flutter/material.dart';

class GenderItem extends StatefulWidget {
  String genderType;
  IconData genderIcon;
  bool isGenderMale;
  static bool isMale = true;
  Function fun;
  GenderItem({required this.genderIcon , required this.genderType , required this.isGenderMale , required this.fun});

  @override
  State<GenderItem> createState() => _GenderItemState();
}

class _GenderItemState extends State<GenderItem> {
  Color itemBack = Color.fromRGBO(42, 37, 80, 1);
  Color text = Color.fromRGBO(111, 118, 99, 1);
  Color onTapped = Colors.white;
  Color getColor(){
    if(widget.isGenderMale){
      if(GenderItem.isMale){
        return onTapped;
      }else{
        return text;
      }
    }else{
      if(!GenderItem.isMale){
        return onTapped;
      }else{
        return text;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
          onTap: (){
             if(widget.isGenderMale){
                GenderItem.isMale = true;
              }else{
                GenderItem.isMale = false;
              }
              widget.fun();
          },
          child: Container(
            decoration: BoxDecoration(
              color: itemBack,
              borderRadius: BorderRadius.circular(20),

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  widget.genderIcon,
                  color: getColor(),
                  size: 50,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  widget.genderType,
                  style: TextStyle(
                      color: getColor(),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

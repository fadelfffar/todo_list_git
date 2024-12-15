// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TodoCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  String? category_type;
  String? description;
  String? time;
  String? icon_asset;
  TodoCard({
    super.key,
    required this.category_type,
    required this.description,
    required this.time,
    required this.icon_asset,
  });
  

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          const SizedBox(
            width: 21,
          ),
          Image.asset(icon_asset!),
          SizedBox(width: 21,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(category_type!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15
              ),),
              Text(description!,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12
              ),),
              Text(time!,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12
              ),),
              ]
          ),
          SizedBox(width: 61,),
          Column(
            children: [
              IconButton(onPressed: () {}, icon: Image.asset("assets/options_icon.png")),
              SizedBox(height: 31,),
              const Text("Every Day",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12
              ),)
            ]
          )
        ],
      ),
    );
  }
}

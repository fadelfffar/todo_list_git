import 'package:flutter/material.dart';
import 'package:todo_list_git/widgets/todo_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TODO: fix leading Icon size
        title: const Text("DailyFlow", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        leading: Image.asset("assets/app_icon.png",
        width: 48,
        height: 48,),
      ),
      body: Column(
        children: [
          const Text("Have a nice day",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),),
          const SizedBox(height: 24,),
          const Text("Friday, 13 Des 24",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),),
          const SizedBox(height: 24,),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "create-schedule");
            },
            child: Row(
              children: [
                const SizedBox(
                  width: 21,
                ),
                const Text(
                  "Create Routine Schedule",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  width: 85,),
                Image.asset("assets/add_icon.png"),
              ],
            )),
            const SizedBox(height: 41,),
            TodoCard(
              icon_asset: "assets/person_icon.png",
              category_type: "Personal",
              description: "Morning Activities",
              time: "07:00 AM - 08:00 AM",
            ),
            const SizedBox(height: 20,),
            TodoCard(
              icon_asset: "assets/home_icon.png",
              category_type: "Home",
              description: "House Keeping",
              time: "08:00 AM - 09:00 AM",
            ),
            const SizedBox(height: 20,),
            TodoCard(
              icon_asset: "assets/study_icon.png",
              category_type: "Study",
              description: "Read Book",
              time: "16:00 PM - 18:00 PM",
            ),
            const SizedBox(height: 20,),
            TodoCard(
              icon_asset: "assets/movie_icon.png",
              category_type: "Movie",
              description: "Movie Night",
              time: "21:00 PM - 23:00 PM",
            ),
        ],
      ),
    );
  }
}
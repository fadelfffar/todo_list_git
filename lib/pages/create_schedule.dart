import 'package:flutter/material.dart';
import 'package:todo_list_git/widgets/input_textfield.dart';
import 'package:todo_list_git/widgets/submit_button.dart';

class CreateSchedule extends StatelessWidget {
  const CreateSchedule({super.key});

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
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(height: 37,),
            Row(
              children: [
                Text("Create Schedule", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                SizedBox(width: 130,),
                ElevatedButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, "home-page");
                  },
                  // TODO: change background color to transparent
                  // style: ButtonStyle(
                  //   backgroundColor: Colors.white
                  // ),
                  child: Image.asset("assets/close_icon.png",width: 15, height: 15,))
              ],
            ),
            SizedBox(height: 54,),
            InputTextfield(
              hintTextData: "Schedule Namne",
              labelTextData: "Name",
              suffixIconImage: "assets/edit_icon.png",
            ),
            SizedBox(height: 32,),
            InputTextfield(
              hintTextData: "Select Category",
              labelTextData: "Category",
              suffixIconImage: "assets/note_icon.png",
            ),
            SizedBox(height: 32,),
            InputTextfield(
              hintTextData: "Select Date",
              labelTextData: "Date",
              suffixIconImage: "assets/date_icon.png",
            ),
            // TODO: add clock start and end selector
            SizedBox(height: 36,),
            SubmitButton(buttonText: "Create"),
          ],
        ),
      ),
    );
  }
}
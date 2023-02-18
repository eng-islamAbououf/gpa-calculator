import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gpa_calculator/semester_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Color mainColor = Colors.white.withRed(211).withBlue(237).withGreen(226) ;
  Color blue = Colors.white.withRed(36).withBlue(112).withGreen(167) ;
  List<TextEditingController> nameControllers = [TextEditingController(),TextEditingController()];
  List<TextEditingController> hourControllers = [TextEditingController(),TextEditingController()];
  List<TextEditingController> gradeControllers = [TextEditingController(),TextEditingController()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        title: const Text(
            "GPA Calculator",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        backgroundColor:mainColor ,
        leading: const Icon(
            Icons.calculate ,
            color: Colors.blueAccent,
          size: 40,

        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.list ,
              color: Colors.blueAccent,
              size: 40,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context , index)=> SemesterItem(
                    nameController: nameControllers[index],
                    hourController: hourControllers[index],
                    gradeController: gradeControllers[index],
                  ),
                itemCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

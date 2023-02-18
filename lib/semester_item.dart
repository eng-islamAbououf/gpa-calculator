import 'package:flutter/material.dart';
import 'package:gpa_calculator/custom_txt_field.dart';

class SemesterItem extends StatelessWidget {
  SemesterItem({Key? key ,
    required this.nameController,
    required this.hourController,
    required this.gradeController,
  }) : super(key: key);
  TextEditingController? nameController , hourController , gradeController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black),
          color: Colors.white,
        ),
        width: double.infinity,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CustomFieldInput(txt: "Course Name", controller: nameController!),
                Row(
                  children: [
                    Expanded(child: CustomFieldInput(
                        txt: "Hours", controller: hourController!,
                      inputType: TextInputType.number,
                    )),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: CustomFieldInput(txt: "Grade", controller: gradeController!,
                          inputType: const TextInputType.numberWithOptions(
                            signed: true ,
                          ),
                    ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}

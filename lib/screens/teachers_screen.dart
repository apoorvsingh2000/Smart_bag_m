import 'package:flutter/material.dart';
import 'package:smart_bag_m/constants/constants.dart';
import 'package:smart_bag_m/constants/styles.dart';
import 'package:smart_bag_m/models/streams.dart';

class TeachersScreen extends StatelessWidget {
  const TeachersScreen({Key? key}) : super(key: key);
  static const String id = 'teachers_screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backgroundDecoration,
      padding: kListMargin(context),
      child: Container(
        padding: kListMargin(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white70,
        ),
        child: StreamBuilder(
          stream: teacherDetailsStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.orangeAccent,
                ),
              );
            }
            var teacherDetails = snapshot.requireData.docs[0].data();
            print(teacherDetails);
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Teacher ID',
                      style: kHeadingTextStyle(context),
                    ),
                    Text(
                      'Teacher Name',
                      style: kHeadingTextStyle(context),
                    ),
                    Text(
                      'Classes Teaching',
                      style: kHeadingTextStyle(context),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenWidth(context) * 0.02,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: teacherDetails.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: screenWidth(context) * 0.02,
                          child: Text(
                            teacherDetails.keys.elementAt(index),
                          ),
                        ),
                        Text(
                          teacherDetails.values.elementAt(index)[0],
                        ),
                        Text('${teacherDetails.values.elementAt(index)[1]}'),
                      ],
                    ); //studentDetails.keys.elementAt(index)
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

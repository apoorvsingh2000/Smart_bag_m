import 'package:flutter/material.dart';
import 'package:smart_bag_m/constants/constants.dart';
import 'package:smart_bag_m/constants/styles.dart';
import 'package:smart_bag_m/models/streams.dart';

class StudentsScreen extends StatelessWidget {
  const StudentsScreen({Key? key}) : super(key: key);
  static const String id = 'students_screen';

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
          stream: studentDetailsStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.orangeAccent,
                ),
              );
            }
            var studentDetails = snapshot.requireData.docs[0].data();
            print(studentDetails);
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Student ID',
                      style: kHeadingTextStyle(context),
                    ),
                    Text(
                      'Student Name',
                      style: kHeadingTextStyle(context),
                    ),
                    Text(
                      'Class & Section',
                      style: kHeadingTextStyle(context),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenWidth(context) * 0.02,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: studentDetails.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: screenWidth(context) * 0.02,
                          child: Text(
                            studentDetails.keys.elementAt(index),
                          ),
                        ),
                        Text(
                          studentDetails.values.elementAt(index)[0],
                        ),
                        Text(
                            '${studentDetails.values.elementAt(index)[1]} ${studentDetails.values.elementAt(index)[2]}'),
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

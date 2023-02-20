import 'package:flutter/material.dart';
import 'package:smart_bag_m/constants/constants.dart';
import 'package:smart_bag_m/constants/styles.dart';
import 'package:smart_bag_m/models/streams.dart';

class AllItemsScreen extends StatelessWidget {
  const AllItemsScreen({Key? key}) : super(key: key);
  static const String id = 'all_items_screen';

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
          stream: allItemsStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.orangeAccent,
                ),
              );
            }
            var allItems = snapshot.requireData.docs[0].data();
            print(allItems);
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Item ID',
                      style: kHeadingTextStyle(context),
                    ),
                    Text(
                      'Item Name',
                      style: kHeadingTextStyle(context),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenWidth(context) * 0.02,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: allItems.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: screenWidth(context) * 0.02,
                          child: Text(
                            allItems.keys.elementAt(index),
                          ),
                        ),
                        Text('${allItems.values.elementAt(index)}'),
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

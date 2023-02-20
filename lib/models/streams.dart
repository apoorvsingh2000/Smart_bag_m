import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

Stream<QuerySnapshot<Map<String, dynamic>>> studentDetailsStream = firestore
    .collection('school')
    .doc('school_1')
    .collection('students')
    .snapshots();

Stream<QuerySnapshot<Map<String, dynamic>>> teacherDetailsStream = firestore
    .collection('school')
    .doc('school_1')
    .collection('staff')
    .snapshots();

Stream<QuerySnapshot<Map<String, dynamic>>> allItemsStream = firestore
    .collection('school')
    .doc('school_1')
    .collection('items')
    .snapshots();

CollectionReference<Map<String, dynamic>> classesStream = firestore
    .collection('school')
    .doc('school_1')
    .collection('grade');
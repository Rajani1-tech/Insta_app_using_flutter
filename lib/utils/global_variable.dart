import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ig_clone/screens/feed_screen.dart';
import 'package:ig_clone/screens/home_screen.dart';
import 'package:ig_clone/screens/profile/edit_profile_screen.dart';

import '../screens/profile/profile_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  //const CommentsScreen(), 
  Text('explore'),
  const EditProfileScreen(),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  )
];

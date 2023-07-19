import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:personal_finance_app_beta/app/app.locator.dart';
import 'package:personal_finance_app_beta/services/auth_service.dart';

import '../models/user/user.dart';

class UserService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final _authService = locator<AuthenticationService>();

  String? get _uid => _authService.currentUser?.uid;

  User? _user;

  User? get user => _user;

  // Create a new user in Firestore
  Future<void> createUser(User user) async {
    try {
      final userMap = user.toMap();
      await _firestore.collection('users').doc(_uid).set(userMap);
      _user = user;
    } catch (e) {
      debugPrint('Error creating user: $e');
    }
  }

  Future<void> initializeUser() async {
    try {
      final res = await _firestore.collection('users').doc(_uid).get();
      _user = User.fromMap(res.data()!);
    } catch (e) {
      debugPrint('Error loading user: $e');
    }
  }

  // Fetch a single user by email from Firestore
  Future<User?> getUserByEmail(String email) async {
    try {
      final querySnapshot = await _firestore
          .collection('users')
          .where('email', isEqualTo: email)
          .get();

      if (querySnapshot.size > 0) {
        final userData = querySnapshot.docs.first.data();
        return User.fromMap(userData);
      } else {
        return null;
      }
    } catch (e) {
      debugPrint('Error fetching user: $e');
      return null;
    }
  }
}

class User {
  String name;
  String email;

  User({
    required this.name,
    required this.email,
  });

  // Convert user object to a map (for Firestore)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
    };
  }

  // Create a user object from a map (from Firestore)
  static User fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] ?? 'N/A',
      email: map['email'] ?? 'N/A',
    );
  }
}

class UserData {
  final UserCred userCred;
  final String token;

  UserData({
    required this.userCred,
    required this.token,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      userCred: UserCred.fromJson(json['userCred']),
      token: json['token'],
    );
  }
}

class UserCred {
  final String userId;
  final String userType;

  UserCred({
    required this.userId,
    required this.userType,
  });

  factory UserCred.fromJson(Map<String, dynamic> json) {
    return UserCred(
      userId: json['userId'],
      userType: json['userType'],
    );
  }
}

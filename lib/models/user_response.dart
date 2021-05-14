import 'package:getx_app/models/user.dart';

class UserResponse {
  final List<User> data;

  UserResponse(this.data);

  UserResponse.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as List).map((i) => new User.fromJson(i)).toList();
}

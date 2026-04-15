import '../models/user_model.dart';
import '../models/serializers.dart';

Map<String, dynamic> userToJson(UserModel user) {
  return serializers.serializeWith(UserModel.serializer, user)
      as Map<String, dynamic>;
}

UserModel userFromJson(Map<String, dynamic> json) {
  return serializers.deserializeWith(UserModel.serializer, json)!;
}

library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import '../../features/todo/data/models/task_model.dart';
import '../../features/auth/data/models/user_model.dart';

part 'serializers.g.dart';

@SerializersFor([TaskModel, UserModel])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

library;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'user_model.dart';

part 'serializers.g.dart';

@SerializersFor([UserModel])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

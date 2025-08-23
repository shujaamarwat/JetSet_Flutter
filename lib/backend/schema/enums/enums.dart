import 'package:collection/collection.dart';

enum Quarter {
  quarter1,
  quarter2,
  quarter3,
  quarter4,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Quarter):
      return Quarter.values.deserialize(value) as T?;
    default:
      return null;
  }
}

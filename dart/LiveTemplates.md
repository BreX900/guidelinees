## stful (override)
```dart
class $NAME$ extends StatefulWidget {
  const $NAME$({Key key}) : super(key: key);

  @override
  _$NAME$State createState() => _$NAME$State();
}

class _$NAME$State extends State<$NAME$> {
  @override
  Widget build(BuildContext context) {
    return Container($END$);
  }
}
```

## stles (override)
```dart
class $NAME$ extends StatelessWidget {
  const $NAME$({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container($END$);
  }
}
```

## bltvl
```dart
@BuiltValue()
abstract class $NAME$ implements Built<$NAME$, $NAME$Builder> {
  static Serializer<$NAME$> get serializer => _$$$name$Serializer;
  
  $NAME$._();

  factory $NAME$([void Function($NAME$Builder b) updates]) = _$$$NAME$;

  $END$
}
```

## bltnm
```dart
class $NAME$ extends EnumClass {
  static Serializer<$NAME$> get serializer => _$$$name$Serializer;

  const $NAME$._(String name) : super(name);

  static BuiltSet<$NAME$> get values => _$$$name$Values;
  static $NAME$ valueOf(String name) => _$$$name$ValueOf(name);
  
  int get index => values.indexOf(this);
  
  $END$
}
```

## bltnmvl
```dart
const static $NAME$ $value$ = _$$$value$;
```


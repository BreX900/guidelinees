## Screen
```dart
import 'package:flutter/material.dart';

#set( $CamelCaseName = "" )
#set( $part = "" )
#foreach($part in $NAME.split("_"))
  #set( $CamelCaseName = "${CamelCaseName}$part.substring(0,1).toUpperCase()$part.substring(1).toLowerCase()" )
#end

class ${CamelCaseName} extends StatelessWidget {
  const ${CamelCaseName}({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
  
    return Scaffold(
      appBar: AppBar(
        title: Text('${CamelCaseName}'),
      ),
      body: Container(),
    );
  }
}
```

## Stless
```dart
import 'package:flutter/material.dart';

#set( $CamelCaseName = "" )
#set( $part = "" )
#foreach($part in $NAME.split("_"))
  #set( $CamelCaseName = "${CamelCaseName}$part.substring(0,1).toUpperCase()$part.substring(1).toLowerCase()" )
#end

class ${CamelCaseName} extends StatelessWidget {
  const ${CamelCaseName}({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
  
    return Container();
  }
}
```

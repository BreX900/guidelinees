# Best Praticies
- The name of screens/page end with `Screen`
- The attribute name of field blocs in form bloc class end with `FB`

Should be called as close as possibile to the root 
```
 Theme.of(context)
```

## Widgets order
```dart
// initialize first logic values
final authCubit = context.read<AuthCubit>(context);
// than initialize ui values
final theme = Theme.of(context);

// First Wrap logic widget
BlocProvider(
// Last Wrap ui widget
  child: Scaffold(
  …
  )
)
```

## Widget class 
  - Attributes
  - Constructors
  - Factory
  - Widget Methods
  - Logic Methods
  - Ui Mehtods

## Widget attributes order

Follow this order:
- Controller/Bloc/Cubit
- Entity/Data
- General Attributes
- UI Attributes
- decoration
- Logic methods
- Build Methods
- Widgets

```dart
ScaffoldBloBuilder(
  bloc: scaffoldBloc,
  data: MyData(),
  isEnabled: true,
  padding: const EdgetInsents.all(16.0),
  decoration: InputDecoration(),
  onTap: () => print('Tapped'),
  builder: (context) => Button(),
  child: Text('Scaffold Child'),
),
```

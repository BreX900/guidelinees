# Best Praticies
- The name of screens/page end with `Screen`
- The attribute name of field blocs in form bloc class end with `FB`

Should be called as close as possibile to the root 
```
 Theme.of(context)
```

Widget build
```
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

## Standard practices

### Use `undefined` before other types

```typescript
// Bad
const var: string | undefined

// Good
const var: undefined | string
```

### Restricting props

```typescript
type RandomNumberType = {
  value: number;
};

type PositiveNumber = RandomNumberType & {
  isPositive: boolean;
  isNegative?: never;
  isZero?: never;
};

type NegativeNumber = RandomNumberType & {
  isNegative: boolean;
  isPositive?: never;
  isZero?: never;
};

type Zero = RandomNumberType & {
  isZero: boolean;
  isPositive?: never;
  isNegative?: never;
};

type RandomNumber = PositiveNumber | NegativeNumber | Zero;
```

### Translations

Use `pt` for the general translations, `t` for the current translations.

```typescript
const pt = useTranslations(["components"]);
const t = getSubT(pt.t, "ui");
```

### Component

When writing a component, sort your component code in this order (top bottom):

1. Props and initial values management
2. Hooks management
3. Component's logic
4. If needed, internal functions that generates html
5. Final return with the html of the component


## stless

```typescript
interface $NAME$Props {}

const $NAME$ = (props: $NAME$Props) => {
  return $END$;
}
```

## mdl

```typescript
type $NAME$ModelStatus = $STATUS$;

export class $NAME$Model extends Model {
  private _status: $NAME$ModelStatus = $INITIAL_STATUS$;
  private _failure: Failure
  
  constructor({}: {}) {
    super();
  }
  
  get status(): $NAME$ModelStatus {
    return this._status;
  }
  
  get failure(): Failure {
    return this._failure;
  }
}
```

## mdlld

```typescript
type $NAME$ModelStatus = "loading" | "loadFailed" | "loaded";

export class $NAME$Model extends Model {
  private _status: $NAME$ModelStatus = "loading";
  private _failure: Failure
  
  constructor({}: {}) {
    super();
    void Promise.resolve().then(() => loading());
  }
  
  get status(): $NAME$ModelStatus {
    return this._status;
  }
  
  get failure(): Failure {
    return this._failure;
  }
  
  private async loading(): void {
  
  }
}
```

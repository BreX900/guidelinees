# Order of the methods and declaration

- a view controller must be named with `ViewController` at the end like `HomePageViewController`
- a storyboard is named like `HomePage.storyboard`
- `IBOutlet` (buttons, switches, labels ecc)
- private class variables
- `@Published` variables if presents
- `viewDidLoad`
- translation methods if present (ex. localize)
- other view's override methods ordered by iOS lifecycle
- `@IBAction` like buttons and switches
- private `func`
- save actions if present (like top right save)
- handleErrors
- extentions
- delegates

# Installation and running scripts

- Install [swiftlint](https://github.com/realm/SwiftLint) with command: `brew install swiftlint`
- Install [swiftformat](https://github.com/nicklockwood/SwiftFormat) with command: `brew install swiftformat `
- Add in your project in a folder called _scripts_ the two scripts below
  - [**swiftformat**](https://gist.github.com/GabM3/c0b7c991b80360254c334c16a3a96b65)
  - [**swiftlint**](https://gist.github.com/GabM3/762d141302d7c521093aa3c683f908de)

you can find the files in the scripts directory

and make them runnable: `cdmod 775 FileName` from terminal

- open the project in xCode
- go to app -> Build Phases -> open Run Scripts
- edit like this:

![Image of settings in xCode](scripts_screenshot.png)

if you want you can create 2 different Run Scripts clicking the + in the top left corner

- run the app

#

# GUIDELINES FOR LEAK USAGE

A memory leak is a portion of memory that is occupied forever and never used again.
It is garbage that takes space and causes problems.
Memory that was allocated at some point, but was never released and is no longer referenced by your app.
Since there are no references to it, there’s now no way to release it and the memory can’t be used again.

It is recommended to use it in these cases:

- Retain Cycles
- in ViewModels (continuous data updating)
- ViewControllers where more than one value is emitted
- ViewControllers where user can do a dismiss (ex. bottomsheets)

You DON'T need to use it in these cases :

- on alerts callbacks
- where a .first() is called

if you need a leak reference to only a view inside your ViewController like a Button instead of using

```swift
[weak self]
```

you can use only

```swift
[weak yourButtonNameOutlet]
```

# STRONG SELF USAGE

you can write from swift 4.2

```swift
guard let self = self else { return }
```

after a `[weak self]` is used to be sure your ViewController is strong

or to just let know to the developer you are using a strong reference is recommented to use:

```swift
guard let strongSelf = self else { return }
```

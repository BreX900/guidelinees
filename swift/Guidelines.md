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
	- [**swiftformat**](scripts/swiftformat.zsh) 
	- [**swiftlint**](scripts/swiftlint.zsh) 



you can find the files in the scripts directory

and make them runnable: `cdmod 775 FileName` from terminal

- open the project in xCode
- go to app -> Build Phases -> open Run Scripts
- edit like this:

![Image of settings in xCode](scripts_screenshot.png)

if you want you can create 2 different Run Scripts clicking the + in the top left corner


- run the app

# AutoLayout
Autolayout Programmetically in iOS 11 and Swift 4.0

## Prerequisites

Xcode 9.2 and Swift 4

## Getting Started

Auto Layout is a tool from Apple that enables you to create user interfaces that adapt to the different screen sizes of iPhone and iPad devices (and Mac too!). It's like responsive web design, but it provides more control (and dynamic behaviors). Autolayouts completely work upon constraints.

Constraints can be set in two different general ways: Graphically and programmatically.

Most people prefer the graphical way to set the constraints, working directly in the storyboard or XIB files. The big advantage of that option is that it offers immediate visual contact to the views that constraints should apply to, so you just “see and do”. However, and despite the easiness of this method, it’s highly possible to mess things up by setting contradictory constraints that cannot be satisfied simultaneously at runtime. Most of the times Xcode is quite helpful by indicating the misplaced constraints and providing tips on what’s wrong and problematic with the constraints, so you just proceed by fixing and updating your constraints until there are no more conflicts.

Here we are bringing you some simple way to set constraints programmetically using anchors. 

Basically in both Graphically and Programmatically we use the same concept of alingment and constraints. The view controller’s top and bottom layout guides have topAnchor, bottomAnchor, and heightAnchor properties. Views, on the other hand, expose anchors for their edges, centers, size, and baselines. Apart from this we can constrain horizontal anchors (leadingAnchor or trailingAnchor) only with other horizontal anchors

We need to set translatesAutoresizingMaskIntoConstraints properties of the IBOutlets as false to make constraints active through programmetically

Useful link to follow programmetical concept of Constraints in iOS is [Programmatically Creating Constraints](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/ProgrammaticallyCreatingConstraints.html)

## Author

Any suggestion and feedback invited:
[Facebook](https://www.facebook.com/dsrijan),
[Github](https://www.github.com/dsrijan),
[Twitter](https://www.twitter.com/asksrijan),
[LinkedIn](https://www.linkedin.com/in/srijan12345/)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details


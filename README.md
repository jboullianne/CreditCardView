# CreditCardView

[![CI Status](https://img.shields.io/travis/jboullianne/CreditCardView.svg?style=flat)](https://travis-ci.org/jboullianne/CreditCardView)
[![Version](https://img.shields.io/cocoapods/v/CreditCardView.svg?style=flat)](https://cocoapods.org/pods/CreditCardView)
[![License](https://img.shields.io/cocoapods/l/CreditCardView.svg?style=flat)](https://cocoapods.org/pods/CreditCardView)
[![Platform](https://img.shields.io/cocoapods/p/CreditCardView.svg?style=flat)](https://cocoapods.org/pods/CreditCardView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Screenshots
![BasicFull](screenshots/Basic_Full.png)

### Card Templates

```swift
CCBackgroundTemplate.Basic
```
![BasicSmall](screenshots/Basic_Small.png)

```swift
CCBackgroundTemplate.Flat
```
![FlatSmall](screenshots/Flat_Small.png)

## Requirements
Requires at least iOS 9.0.

## Installation

CreditCardView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CreditCardView'
```

## Using The CreditCardView
```swift
creditCardView = CreditCardView(frame: CGRect(), template: .Basic)

// Change Card Details
creditCardView.nameLabel.text = "Jean-Marc Boullianne"
creditCardView.expLabel.text = "02/30"
creditCardView.numLabel.text = "1111 2222 3333 4444"
creditCardView.brandLabel.text = "VISA"
creditCardView.brandImageView.image = UIImage()
```

## Author

jboullianne, jboullianne@gmail.com

## License

CreditCardView is available under the MIT license. See the LICENSE file for more info.

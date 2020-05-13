# SAGridLayout
![IMG_8030](https://user-images.githubusercontent.com/61948950/81810917-7c04a400-952c-11ea-8a59-721d1a22f8d5.GIF)

[![CI Status](https://img.shields.io/travis/Semenov-Alexey/SAGridLayout.svg?style=flat)](https://travis-ci.org/Semenov-Alexey/SAGridLayout)
[![Version](https://img.shields.io/cocoapods/v/SAGridLayout.svg?style=flat)](https://cocoapods.org/pods/SAGridLayout)
[![License](https://img.shields.io/cocoapods/l/SAGridLayout.svg?style=flat)](https://cocoapods.org/pods/SAGridLayout)
[![Platform](https://img.shields.io/cocoapods/p/SAGridLayout.svg?style=flat)](https://cocoapods.org/pods/SAGridLayout)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
Swift 5.0. Ready for use on iOS 13+

## Installation
CocoaPods is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate SAGridLayout into your Xcode project using CocoaPods, specify it in your Podfile:



```ruby
pod 'SAGridLayout'
```
## Manually
If you prefer not to use any of dependency managers, you can integrate SAGridLayout into your project manually. Put Source/SAGridLayout folder in your Xcode project. Make sure to enable Copy items if needed and Create groups.

## Usage

Create your UIcollectionViewController:
```ruby
import SAGridLayout
...

let myCollectionViewController = SACollectionViewController()
```
In viewDidload of your UIcollectionViewController, choose grid which you want to show first, and config rightBarButtonItem like in code below:
```ruby
.selectedStyle = .customGrid // or .defaultGrid or .table

 navigationItem.rightBarButtonItem = UIBarButtonItem(image: selectedStyle.buttonImage, style: .plain, target: self, action: #selector(SACollectionViewController.changeContentLayout))
```
In your UICollectionViewCell class override func layoutSubviews() like in code below: 
```ruby
 override func layoutSubviews() {
        super.layoutSubviews()
        
        SAContentLayout.shared.updateContentStyle(view: self, stackView: stackView, ibLabel: [ibLabel])
            
    }
```
## Author

Semenov Alexey, w.l.e.o@icloud.com

## License

SAGridLayout is available under the MIT license. See the LICENSE file for more info.

# iOS SwiftUI Camera Preview
The sample demonstrates how to quickly implement iOS camera preview using [SwiftUI](https://developer.apple.com/xcode/swiftui/) and [Dynamsoft Camera Enhancer](https://www.dynamsoft.com/camera-enhancer/docs/programming/ios/guide/guide.html?ver=latest).

## Pre-requisites
- Xcode 13.2.1
- Dynamsoft Camera Enhancer 2.1.1

## Usage
1. Install Dynamsoft Camera Enhancer and open the project in Xcode:

    ```bash
    brew install cocoapods
    pod install
    open qrscanner.xcworkspace
    ```
    
2. Open `Signing & Capabilities` editor to select a team.
3. There is no `Info.plist` file in Xcode 13.2.1. You need to add the key to `TARGETS > Info`:
    
    ```xml
    Privacy - Camera Usage Description
    ```

    ![iOS camera access permission](https://www.dynamsoft.com/codepool/img/2022/03/ios-camera-access-permission.png)
    
4. Connect an iPhone or iPad to run the app. 



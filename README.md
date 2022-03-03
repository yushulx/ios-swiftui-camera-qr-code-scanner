# iOS QR Code Scanner
The sample demonstrates how to quickly implement an iOS QR code scanner app using [SwiftUI](https://developer.apple.com/xcode/swiftui/), [Dynamsoft Camera Enhancer](https://www.dynamsoft.com/camera-enhancer/docs/programming/ios/guide/guide.html?ver=latest) and [Dynamsoft Barcode Reader](https://www.dynamsoft.com/barcode-reader/programming/objectivec-swift/user-guide.html?ver=latest).

## Pre-requisites
- Xcode 13.2.1
- Dynamsoft Camera Enhancer 2.1.1
- Dynamsoft Barcode Reader 8.9.1
   
   A valid license key is required for the barcode SDK. Click [here](https://www.dynamsoft.com/customer/license/trialLicense?product=dbr) to apply for a 30-day FREE Trial license.

## Usage
1. Install Dynamsoft Camera Enhancer and Dynamsoft Barcode Reader. Then open the project in Xcode:

    ```bash
    brew install cocoapods
    pod install
    open qrscanner.xcworkspace
    ```
    
2. Open `Signing & Capabilities` editor to select a team.
3. There is no `Info.plist` file in Xcode 13.2.1. You need to add the camera permission key to `TARGETS > Info`:
    
    ```xml
    Privacy - Camera Usage Description
    ```

    ![iOS camera access permission](https://www.dynamsoft.com/codepool/img/2022/03/ios-camera-access-permission.png)
    
4. Set the license key in `CameraManager.swift`:
    
    ```swift
    barcodeReader = DynamsoftBarcodeReader.init(license: "LICENSE-KEY")
    ```
5. Connect an iPhone or iPad to run the app. 
    
    https://user-images.githubusercontent.com/2202306/156506394-7fccfdd2-5be6-4533-883c-b694034a2afa.mp4

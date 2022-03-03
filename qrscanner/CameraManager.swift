//
//  CameraManager.swift
//  qrscanner
//
//  Created by xiao on 2022/3/2.
//

import Foundation
import UIKit
import DynamsoftBarcodeReader
import DynamsoftCameraEnhancer

class CameraManager: NSObject, ObservableObject, DCEFrameListener {
    
    @Published var results = "No QR Code found"
    private var dce: DynamsoftCameraEnhancer! = nil
    private var dceView: DCECameraView! = nil
    private var barcodeReader: DynamsoftBarcodeReader! = nil
    
    init(frame: CGRect) {
        super.init()
        configureDCE(frame: frame)
        // To activate the sdk, apply for a license key: https://www.dynamsoft.com/customer/license/trialLicense?product=dbr
        barcodeReader = DynamsoftBarcodeReader.init(license: "LICENSE-KEY")
    }
    
    func configureDCE(frame: CGRect) {
      dceView = DCECameraView.init(frame: frame)
      dce = DynamsoftCameraEnhancer.init(view: dceView)
      dce.open()
      dce.setFrameRate(30)
        dce.addListener(self)
    }
    
    func getCameraView() -> DCECameraView { 
        return dceView
    }
    
    func frameOutPutCallback(_ frame: DCEFrame, timeStamp: TimeInterval) {
        var image:UIImage!
        image = frame.toUIImage()
        let results = try! barcodeReader.decode(image, withTemplate: "")
        var output = "No QR Code found"
        if (results.count > 0) {
            output = ""
            for item in results {
                let format = item.barcodeFormatString ?? ""
                let text = item.barcodeText ?? ""
                output += "Format: " + format + ", Text: " + text + " \n\n "
            }
        }
        
        DispatchQueue.main.async {
            self.results = output
        }
    }
}

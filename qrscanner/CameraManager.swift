//
//  CameraManager.swift
//  qrscanner
//
//  Created by xiao on 2022/3/2.
//

import Foundation
import UIKit
import DynamsoftCameraEnhancer

class Listener: NSObject, DCEFrameListener {
    func frameOutPutCallback(_ frame: DCEFrame, timeStamp: TimeInterval) {
        // image = frame.toUIImage()
        // image = UIImage.init(cgImage: image.cgImage!, scale: 1.0, orientation: UIImageOrientation.right)
    }
}

class CameraManager: ObservableObject {
    private var dce: DynamsoftCameraEnhancer! = nil
    private var dceView: DCECameraView! = nil
    private var listener: Listener
    init(frame: CGRect) {
        listener = Listener()
        configurationDCE(frame: frame)
    }
    
    func configurationDCE(frame: CGRect) {
      dceView = DCECameraView.init(frame: frame)
      dce = DynamsoftCameraEnhancer.init(view: dceView)
      dce.open()
      dce.setFrameRate(30)
        dce.addListener(listener)
    }
    
    func getCameraView() -> DCECameraView { 
        return dceView
    }
}

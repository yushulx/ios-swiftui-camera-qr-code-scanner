//
//  CameraView.swift
//  qrscanner
//
//  Created by xiao on 2022/3/2.
//

import Foundation
import SwiftUI
import DynamsoftCameraEnhancer

struct CameraView: UIViewRepresentable {
    var cameraManager: CameraManager
    func makeUIView(context: Context) -> DCECameraView {
        let dceView = cameraManager.getCameraView()
        return dceView
    }

    func updateUIView(_ uiView: DCECameraView, context: Context) {
        
    }
}

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
    @ObservedObject private var cameraManager = CameraManager(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    func makeUIView(context: Context) -> DCECameraView {
        let dceView = cameraManager.getCameraView()
        return dceView
    }

    func updateUIView(_ uiView: DCECameraView, context: Context) {
        
    }
}

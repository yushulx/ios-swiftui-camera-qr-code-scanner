//
//  ContentView.swift
//  qrscanner
//
//  Created by xiao on 2022/2/23.
//

import SwiftUI
import DynamsoftCameraEnhancer

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            CameraView()
                Spacer()
            VStack() {
                Text("iOS QR Code Scanner").font(.title).foregroundColor(.orange)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

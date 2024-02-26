//
//  HelloAnimationApp.swift
//  HelloAnimation
//
//  Created by Nino on 2024/2/26.
//

import SwiftUI

@main
struct HelloAnimationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(.plain)
        .defaultSize(.init(width: 1024 * 2, height: 464 * 2))

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}

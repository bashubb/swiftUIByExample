//
//  iDineApp.swift
//  iDine
//
//  Created by HubertMac on 23/02/2024.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
                
        }
    }
}

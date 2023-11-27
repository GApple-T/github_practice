//
//  APIdataApp.swift
//  APIdata
//
//  Created by 한재형 on 2023/09/23.
//

import SwiftUI

@main
struct APIdataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: HomeViewModel())
        }
    }
}

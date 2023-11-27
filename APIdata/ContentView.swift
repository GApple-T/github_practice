//
//  ContentView.swift
//  APIdata
//
//  Created by 한재형 on 2023/09/23.
//

import SwiftUI
import Moya

struct ContentView: View {
    @State private var errorMessage: String?
//    @State private var information = ["dd"]
    
    @StateObject var viewModel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        VStack {
//            if let errorMessage = errorMessage {
//                Text(errorMessage)
//                    .foregroundColor(.red)
//            } else {
            
            Text(viewModel.information.description)
                
//            }
//            Text("\(viewModel.$information)")
        }
        .onAppear(perform: viewModel.loadData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: HomeViewModel())
    }
}

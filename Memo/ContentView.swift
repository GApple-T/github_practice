//
//  ContentView.swift
//  Memo
//
//  Created by 한재형 on 2023/08/21.
//

import SwiftUI

struct ContentView: View {
    @State private var search = ""
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            ScrollView{
                VStack{
                    HStack{
                        Spacer()
                        Button{
                            
                        }label: {
                            Text("편집")
                                .foregroundColor(.orange)
                        }
                    }.padding(.horizontal)
                    HStack{
                        Text("폴더")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 35))
                        Spacer()
                    }.padding(.horizontal)
                    TextField("  검색", text: $search)
                        .foregroundColor(.white)
                        .frame(width: 365, height: 35)
                        .background(Color("back"))
                        .cornerRadius(8)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

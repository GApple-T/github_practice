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
        NavigationStack{
            ZStack{
                Color.black.ignoresSafeArea()
                VStack{
                    HStack{
                        Spacer()
                        Button{
                            //
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
                    List{
                        Section{
                            NavigationLink(destination: iCloudMemo()){
                                HStack{
                                    Image(systemName: "folder")
                                        .foregroundColor(.orange)
                                    Spacer()
                                    Text("모든 iCloud")
                                }
                            }
                            NavigationLink(destination: Memo()){
                                HStack{
                                    Image(systemName: "folder")
                                        .foregroundColor(.orange)
                                    Spacer()
                                    Text("메모")
                                }
                            }
                            NavigationLink(destination: DreamMemo()){
                                HStack{
                                    Image(systemName: "folder")
                                        .foregroundColor(.orange)
                                    Spacer()
                                    Text("내 꿈")
                                }
                            }
                        } header: {
                            Text("iCloud")
                        }
                        .listRowBackground(Color("back"))
                        .foregroundColor(.white)
                        .headerProminence(.increased)
                    }
                    .frame(width: 395)
                    .background(.black)
                    .scrollContentBackground(.hidden)
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

//
//  ViewModel.swift
//  APIdata
//
//  Created by 한재형 on 11/17/23.
//

import Foundation
import Moya

final class HomeViewModel: ObservableObject {
    @Published var errorMessage = ""
    @Published var information : [String] = []
    let provider = MoyaProvider<SearchService>()
    
    func loadData() {
        provider.request(.justGet) { result in
            switch result {
            case let .success(response):
                do {
                    let information = try JSONDecoder().decode(ClassAPI.self, from: response.data)
                    
                    guard let x = information.hisTimetable?.last?.row else {
                        return print("nil")
                    }
                    for i in 0...8{
                        self.information.append(x[i].ITRT_CNTNT)
                        print(x[i].ITRT_CNTNT)
                    }
                    print(self.information)
                } catch {
                    self.errorMessage = "JSON 디코딩 에러: \(error)"
                }
            case let .failure(error):
                self.errorMessage = "네트워크 요청 실패: \(error.localizedDescription)"
            }
        }
    }
}

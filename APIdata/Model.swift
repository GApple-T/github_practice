//
//  Information.swift
//  APIdata
//
//  Created by 한재형 on 10/12/23.
//

//"https://open.neis.go.kr/hub/hisTimetable?KEY=5f6e46f771b746f4b874756a6d7617e5&Type=json&pIndex=1&pSize=7&ATPT_OFCDC_SC_CODE=F10&SD_SCHUL_CODE=7380292&ALL_TI_YMD=20231109&GRADE=1&CLRM_NM=4
//case className = "ITRT_CNTNT"
//case classTime = "PERIO"

import Foundation
import Moya

struct ClassAPI: Codable {
    var hisTimetable: [HisTimetable]?
    
    struct HisTimetable: Codable {
        var row: [Row]?
        
        struct Row: Codable {
            var ITRT_CNTNT: String
             
//            enum CordingKeys: String, CodingKey {
//                case classTime = "PERIO"
//                case className = "ITRT_CNTNT"
//                
//            }
        }
    }
}



enum SearchService {
    case justGet
}

extension SearchService: TargetType {
    
    var baseURL: URL {
        return URL(string: "https://open.neis.go.kr/hub/hisTimetable?KEY=5f6e46f771b746f4b874756a6d7617e5&Type=json&pIndex=1&pSize=9&ATPT_OFCDC_SC_CODE=F10&SD_SCHUL_CODE=7380292&ALL_TI_YMD=20231127&GRADE=1&CLRM_NM=4")!
    }
    
    var path: String {
        switch self {
        case .justGet:
            return ""
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .justGet:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .justGet:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
}

import UIKit

//Task {
//    let url = URL(string: "https://gvec03gvkf.execute-api.ap-northeast-2.amazonaws.com/")
//
//    let (data,_) = try! await URLSession.shared.data(from: url!)
//
//    let jsonString = String(data:data, encoding: .utf8)
//    print(jsonString!)
//
//
//}

Task {
    let url = URL(string: "https://gvec03gvkf.execute-api.ap-northeast-2.amazonaws.com/")!
    
    let (data,_) = try! await URLSession.shared.data(from: url)
    
    let decoder = JSONDecoder()
    let dramaCollection = try! decoder.decode(DramaCollection.self, from: data)
    
    // print(dramaCollection.bigBanner)
    // print(dramaCollection.dramas[1].catagoryTitle)
    
    
    for drama in dramaCollection.dramas {
        // print("카테고리 타이틀: \(drama.catagoryTitle)")
    }
    
    for drama in dramaCollection.dramas {
        print("카테고리 타이틀: \(drama.catagoryTitle)")
        for poster in drama.posters {
            print("포스터 : \(poster)")
        }
    }
    
    
    
}

// 받는거 : Decodable
// 보내는거 : Encodable
// 두개다 합친 일반적인 경우 : Codable

struct DramaCollection: Codable {
    var bigBanner:String
    var dramas:[Drama]
    
    enum CodingKeys:String,CodingKey {
        case bigBanner = "BIG_BANNER"
        case dramas = "DRAMAS"
    }
    
}

struct Drama:Codable {
    var catagoryTitle:String
    var posters : [String]
    
    enum CodingKeys:String,CodingKey {
        case catagoryTitle = "CATEGORY_TITLE"
        case posters = "POSTERS"
    }
}

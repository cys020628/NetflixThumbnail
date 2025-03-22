//
//  Drama.swift
//  NetflixThumbnail
//
//  Created by 영석 on 3/22/25.
//

import Foundation


struct DramaCollection: Codable {
    var bigBanner:String
    var dramas:[Drama]
    
    enum CodingKeys:String,CodingKey {
        case bigBanner = "BIG_BANNER"
        case dramas = "DRAMAS"
    }
    
}

struct Drama:Codable {
    var categoryTitle:String
    var posters : [String]
    
    enum CodingKeys:String,CodingKey {
        case categoryTitle = "CATEGORY_TITLE"
        case posters = "POSTERS"
    }
}

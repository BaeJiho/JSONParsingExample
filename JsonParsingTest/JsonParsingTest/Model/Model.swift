//
//  Model.swift
//  JsonParsingTest
//
//  Created by 배지호 on 15/03/2019.
//  Copyright © 2019 baejiho. All rights reserved.
//

import Foundation

struct Country: Decodable {
    let name: String
    let capital: String
    let region: String
}

struct Chat: Decodable {
    let name: String
    let description: String
    let courses: [Info]
//    let id: Int
//    let name: String
//    let link: String
//    let imageUrl: String
    
//    init(json:[String: Any]) {
//        id = json["id"] as? Int ?? -1
//        name = json["name"] as? String ?? ""
//        link = json["link"] as? String ?? ""
//        imageUrl = json["imageUrl"] as? String ?? ""
//    }
}
struct Info: Decodable {
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?

}

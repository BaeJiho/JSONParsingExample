//
//  ViewController.swift
//  JsonParsingTest
//
//  Created by 배지호 on 12/03/2019.
//  Copyright © 2019 baejiho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var person: [String: Any] = [:]
    var nameArr: [String] = []
    var ageArr: [String] = []
    var employedArr: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //번들에 있는 파일 경로를 가져오기
        let path = Bundle.main.path(forResource: "person", ofType: "json")
        //경로를 가지고 json파일을 데이터화 하기
        guard let data = try! String(contentsOfFile: path!).data(using: .utf8) else {return}
        //JSONSerializtion으로 파싱하기
        let json = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
        person = json
        guard let parsingData = person["person"] as? [[String: Any]] else {return}
        for i in parsingData {
            print(i["age"] as! String)
        }
        print(nameArr)
        
    }
}


//
//  JsonParsingViewController.swift
//  JsonParsingTest
//
//  Created by 배지호 on 15/03/2019.
//  Copyright © 2019 baejiho. All rights reserved.
//

import UIKit

class JsonParsingViewController: UIViewController {
    
    let url = "https://api.letsbuildthatapp.com/jsondecodable/courses_missing_fields"
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let urlObject = URL(string: url) else {return}
        URLSession.shared.dataTask(with: urlObject) { (data, response, error) in
            guard let data = data else {return}
            let dataString = String(data: data, encoding: .utf8)

            
            do {
                let chats = try JSONDecoder().decode([Info].self, from: data)
                print(chats)
//                guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] else {return}
//                let chat = Chat(json: json)
//                print(chat.name)
            } catch {
                
            }
        }.resume()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

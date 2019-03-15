//
//  VersionTwoViewController.swift
//  JsonParsingTest
//
//  Created by 배지호 on 15/03/2019.
//  Copyright © 2019 baejiho. All rights reserved.
//

import UIKit

class VersionTwoViewController: UIViewController {

    let url = "https://restcountries.eu/rest/v2/all"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let urlObject = URL(string: url) else {return}
        URLSession.shared.dataTask(with: urlObject) { (data, response, error) in
            guard let data = data else {return}
            guard let response = response else {return}
            
            do {
                var countries = try JSONDecoder().decode([Country].self, from: data)
                for i in countries {
                    print(i.name)
                }
            } catch {
                print("error")
            }
        }.resume()
        
    }

}

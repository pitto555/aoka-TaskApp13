//
//  ViewController.swift
//  aoka-TaskApp13
//
//  Created by aoka on 2021/04/26.
//

import UIKit

class ViewController: UIViewController {
    
    private var fruitsCheckArray = [ ["keyName": "りんご", "keyCheck": false],
                                     ["keyName": "みかん", "keyCheck": true],
                                     ["keyName": "バナナ", "keyCheck": false],
                                     ["keyName": "パイナップル", "keyCheck": true],]
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fruitsCheckArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell1", for: indexPath) as! TableViewCell
        
        cell.memoLabel.text = fruitsCheckArray[indexPath.row]["keyName"] as? String
            
        if let keyCheck = fruitsCheckArray[indexPath.row]["keyCheck"] as? Bool {
            cell.checkImage.image = nil
            if keyCheck == true {
                cell.checkImage.image = UIImage(named: "oranngeCheck")
            }
        }
        return cell
    }
}






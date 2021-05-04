//
//  ViewController.swift
//  aoka-TaskApp13
//
//  Created by aoka on 2021/04/26.
//

import UIKit

struct CheckItem {
    var name: String
    var isChecked: Bool
}

class ViewController: UIViewController {
    private var checkItems: [CheckItem] = [
        CheckItem(name: "りんご", isChecked: false),
        CheckItem(name: "みかん", isChecked: true),
        CheckItem(name: "バナナ", isChecked: false),
        CheckItem(name: "パイナップル", isChecked: true),
    ]
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        checkItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell1", for: indexPath) as! TableViewCell
        
        cell.configure(checkItem: checkItems[indexPath.row])

        return cell
    }
}






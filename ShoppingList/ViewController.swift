//
//  ViewController.swift
//  ShoppingList
//
//  Created by egmars.janis.timma on 07/05/2019.
//  Copyright © 2019 egmars.janis.timma. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var items = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Shopping list"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addItem))
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    
    @objc func addItem() {
        let ac = UIAlertController(title: "Enter item", message: nil, preferredStyle: .alert)
        ac.addTextField()
        
        let submitAction = UIAlertAction(title: "Submit", style: .default) {
            [weak self, weak ac] action in
            guard let item = ac?.textFields?[0].text else {return}
            self?.submit(item)
        }
        ac.addAction(submitAction)
        present(ac, animated: true)
    }
    
    func submit(_ answer: String) {
        let lowerAnswer = answer.lowercased()
        items.insert(answer, at: 0)
        let indexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
        return
    }
}

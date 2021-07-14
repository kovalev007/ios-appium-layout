//
//  ViewController.swift
//  layout
//
//  Created by admin on 13.07.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(MyCustomTableViewCell.nib(), forCellReuseIdentifier: MyCustomTableViewCell.identifier)
        table.accessibilityIdentifier = "myTable"
        table.delegate = self
        table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row > 2 {
            let customCell = tableView.dequeueReusableCell(withIdentifier: MyCustomTableViewCell.identifier, for: indexPath) as! MyCustomTableViewCell
            customCell.configure(with: "1", with: "2", with: "3", with: "4", with: "5", with: "text1", with: "6", with: "7")
            return customCell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello World"
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}

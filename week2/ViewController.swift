//
//  ViewController.swift
//  week2
//
//  Created by 박호현 on 2022/03/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 155
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            var cell = tableView.dequeueReusableCell(withIdentifier: "pocketmoncellView", for: indexPath) as! PoketmonTableViewCell
            cell.pocketMonviewname.text = "피카츄"
            cell.pocketMonviewtype.text = "전기타입"
            cell.pocketMonviewnumber.text = "#025"
            return cell
        }
        else if indexPath.row == 1 {
            var cell = tableView.dequeueReusableCell(withIdentifier: "pocketmoncellView", for: indexPath) as! PoketmonTableViewCell
            cell.pocketMonviewname.text = "거북이"
            cell.pocketMonviewtype.text = "물타입"
            cell.pocketMonviewnumber.text = "#033"
            return cell
        }
        else {
            var cell = tableView.dequeueReusableCell(withIdentifier: "pocketmoncellView", for: indexPath) as! PoketmonTableViewCell
            cell.pocketMonviewname.text = "아몰랑"
            cell.pocketMonviewtype.text = "몰랑타입"
            cell.pocketMonviewnumber.text = "#0??"
            return cell
        }
        
    }
    
}


//
//  ViewController.swift
//  FirefoxHomePage
//
//  Created by Appinventiv on 2/26/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var cars = ["tableimage1","tableimage2","tableimage3","tableimage4","tableimage5"]
    var desc = ["kasak By Anand-Download Mp3 Song|Mp3Mad.CoM","Kasak uthi mere mann me piya lyrics - Chhodo na yaar", "Sajni Mp3 Song Download Jal Raagtune","Tera Woh Pyar By Asim Azhar Mp3 Song Download","Sell car, Sell Used Car Online | CarTrade"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0
        {
            return (UIScreen.main.bounds.height) / 2.5
        }
        else if indexPath.row == 1
        {
            return 50
        }
        else
        {
            return 100
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! CollectionViewCell
            return cell
        }
        if indexPath.row == 1
        {
        let cell : UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as UITableViewCell!
        cell.textLabel?.text = "Highlights"
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
        return cell
        }
        if indexPath.row >= 2
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! highlightsTableCell
            cell.displayImage.image = UIImage(named : (cars[indexPath.row - 2] + ".jpg"))
            cell.descriptionLabel.text = desc[indexPath.row - 2]
            return cell
        }
        return UITableViewCell()
    }

}


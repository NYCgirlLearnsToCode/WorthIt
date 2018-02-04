//
//  ViewController.swift
//  WorthIt
//
//  Created by Lisa J on 1/27/18.
//  Copyright © 2018 Lisa J. All rights reserved.
//

import UIKit
import Firebase

class WorthItHomeViewController: UIViewController {
    
    let worthItHomeView = WorthItHomeView()
    var businesses = [Business](){
        didSet {
            DispatchQueue.main.async {
                self.worthItHomeView.tableView.reloadData()
            }
        }
    }
    var testLocations = ["Pasta place", "Burger place", "375 Fries"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(worthItHomeView)
        worthItHomeView.tableView.dataSource = self
        DBService.manager.getDB().observe(.value)
        { (snapshot) in
            var businneses = [Business]()
            for child in snapshot.children {
                let dataSnapshot = child as! DataSnapshot
                if let dict = dataSnapshot.value as? [String: Any]
                {
                    let business = Business.init(businessDict: dict)
                    self.businesses.append(business)
                }
            }
            self.businesses = businneses
            print(self.businesses)
        }
    }


}


extension WorthItHomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testLocations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let testLocation = testLocations[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Location Cell", for: indexPath)
        cell.textLabel?.text = testLocation
        return cell
    }
    
    
}

//
//  MenuListScreen.swift
//  TB-Challenge
//
//  Created by Kaushal Desai on 2019-02-11.
//  Copyright © 2019 Kaushal Desai. All rights reserved.
//

import UIKit

class MenuListScreen: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var items: [Item] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = createArray()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func createArray() -> [Item]
    {
        
        var tempItems: [Item] = []
        
        let item1 = Item(image: #imageLiteral(resourceName: "pancake"), title: "Pancakes")
        let item2 = Item(image: #imageLiteral(resourceName: "beer"), title: "Drinks")
        let item3 = Item(image: #imageLiteral(resourceName: "omelette"), title: "Omelettes")
        
        tempItems.append(item1)
        tempItems.append(item2)
        tempItems.append(item3)
        
        return tempItems
        
        
        
    }
    
    

    
    
}


extension MenuListScreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = items[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell") as! MenuItemCell
        
        cell.setItem(item: item)
        
        return cell
    }
    
    //func numberOfSections(in tableView: UITableView) -> Int {
    //   return 2
    //}
}

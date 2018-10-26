//
//  PrizesController.swift
//  ProiectXML
//
//  Created by Adi Veliman on 26/04/2018.
//  Copyright © 2018 Adi Veliman. All rights reserved.
//

import UIKit

class PrizesController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var prizes = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        do {
            if let xmlUrl = Bundle.main.url(forResource: "XML", withExtension: "xml"){
                let xml = try String(contentsOf: xmlUrl)
                let parser = Parser(withXML: xml)
                self.prizes = parser.parsePrizes()
                
            }
        } catch{
            print(error)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prizes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.textAlignment = .center
        cell.textLabel?.text = prizes[indexPath.row]
        return cell
    }
    

}

//
//  SpecificRulesController.swift
//  ProiectXML
//
//  Created by Adi Veliman on 26/04/2018.
//  Copyright © 2018 Adi Veliman. All rights reserved.
//

import UIKit

class SpecificRulesController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var titluLabel: UILabel!
    var reguli : [String]?
    var titlu : String = ""
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        titluLabel.text = titlu
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (reguli?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ruleCell", for: indexPath) as! ruleCell
        cell.ruleLabel.text = "∙\(reguli?[indexPath.row] ?? "")"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
    
    
    @IBOutlet weak var backPressed: UIButton!
    
    @IBAction func backPressedd(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

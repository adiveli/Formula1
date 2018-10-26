//
//  RulesController.swift
//  ProiectXML
//
//  Created by Adi Veliman on 26/04/2018.
//  Copyright © 2018 Adi Veliman. All rights reserved.
//

import UIKit

class RulesController: UIViewController {
    
    var regulament : regulament?
    var option : Int?
    

    @IBAction func sportPressed(_ sender: Any) {
        option = 0
        performSegue(withIdentifier: "toSpecificRules", sender: nil)
    }
    @IBAction func technicalPressed(_ sender: Any) {
        option = 1
        performSegue(withIdentifier: "toSpecificRules", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            if let xmlUrl = Bundle.main.url(forResource: "XML", withExtension: "xml"){
                let xml = try String(contentsOf: xmlUrl)
                let parser = Parser(withXML: xml)
                self.regulament = parser.parseRegulament()
                
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSpecificRules" && option == 0{
            if let controller = segue.destination as? SpecificRulesController{
                controller.reguli = self.regulament?.sportiv
                controller.titlu = "Regulament Sportiv"
            }
            
            
            
        }else if segue.identifier == "toSpecificRules" && option == 1{
            if let controller = segue.destination as? SpecificRulesController{
                controller.reguli = self.regulament?.tehnic
                controller.titlu = "Regulament Tehnic"
            }
        
        
        }
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

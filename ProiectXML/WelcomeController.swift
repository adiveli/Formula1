//
//  WelcomeController.swift
//  ProiectXML
//
//  Created by Adi Veliman on 25/04/2018.
//  Copyright © 2018 Adi Veliman. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toMenu", sender: nil)
        
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

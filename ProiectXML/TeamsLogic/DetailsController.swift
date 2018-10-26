//
//  DetailsController.swift
//  ProiectXML
//
//  Created by Adi Veliman on 26/04/2018.
//  Copyright © 2018 Adi Veliman. All rights reserved.
//

import UIKit

class DetailsController: UIViewController {

    var echipa : echipa?
    
    @IBOutlet weak var numeMembru2: UILabel!
    @IBOutlet weak var numeMembru1: UILabel!
    @IBOutlet weak var pozaMembru1: UIImageView!
    @IBOutlet weak var pozaMembru2: UIImageView!
    @IBOutlet weak var numeLabel: UILabel!
    @IBOutlet weak var sasiuLabel: UILabel!
    @IBOutlet weak var configuratieLabel: UILabel!
    @IBOutlet weak var putereLabel: UILabel!
    @IBOutlet weak var franeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.pozaMembru1.layer.cornerRadius = self.pozaMembru1.frame.size.width / 2;
        self.pozaMembru1.clipsToBounds = true;
        self.pozaMembru2.layer.cornerRadius = self.pozaMembru2.frame.size.width / 2;
        self.pozaMembru2.clipsToBounds = true;
        numeLabel.text = echipa?.nume
        sasiuLabel.text = echipa?.monopost.sasiu
        configuratieLabel.text = echipa?.monopost.configuratie
        putereLabel.text = echipa?.monopost.putere
        if echipa?.monopost.frane == ""{
            franeLabel.text = "Nespecificat"
        }else{
        franeLabel.text = echipa?.monopost.frane
        }
        numeMembru1.text = echipa?.membri.nume1
        numeMembru2.text = echipa?.membri.nume2
        pozaMembru1.image = UIImage(named: (echipa?.imagine1)!)
        pozaMembru2.image = UIImage(named: (echipa?.imagine2)!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backPressed(_ sender: Any) {
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

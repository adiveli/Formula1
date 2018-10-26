//
//  TeamsController.swift
//  ProiectXML
//
//  Created by Adi Veliman on 25/04/2018.
//  Copyright © 2018 Adi Veliman. All rights reserved.
//

import UIKit

class TeamsController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    var echipe = [echipa]()
    var selectedValue : Int = 0
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        do {
            if let xmlUrl = Bundle.main.url(forResource: "XML", withExtension: "xml"){
                let xml = try String(contentsOf: xmlUrl)
                let parser = Parser(withXML: xml)
                self.echipe = parser.parse1()
                
            }
        } catch{
            print(error)
        }
        
//        for echipa in echipe{
//            print("/////////\n")
//            print("nume: \(echipa.nume)\n")
//            print("membru1: \(echipa.membri.nume1)\n")
//            print("membru2: \(echipa.membri.nume2)\n")
//            print("monopost-sasiu: \(echipa.monopost.sasiu)\n")
//            print("monopost-conf: \(echipa.monopost.configuratie)\n")
//            print("monopost-putere: \(echipa.monopost.putere)\n")
//            print("monopost-frane: \(echipa.monopost.frane)\n")
//            print("imagine: \(echipa.imagine)\n")
//            print("/////////\n")
//            
//        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! customCell
        cell.image.image = UIImage(named: echipe[indexPath.row].imagine)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedValue = indexPath.row
        performSegue(withIdentifier: "detailsController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsController"{
            if let controller = segue.destination as? DetailsController{
                controller.echipa = echipe[selectedValue]
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

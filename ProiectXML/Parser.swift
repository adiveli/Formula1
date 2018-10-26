//
//  Parser.swift
//  ProiectXML
//
//  Created by Adi Veliman on 25/04/2018.
//  Copyright © 2018 Adi Veliman. All rights reserved.
//

import Foundation

class Parser : NSObject,XMLParserDelegate{
    
    var xmlParser : XMLParser?
    
    
    var echipe : [echipa] = []

    var xmlText = ""
    
    var echipaCurenta : echipa?
    var membriCurenti : membriEchipa?
    var monopostCurent : monopostDetails?
    var regulamentCurent: regulament?
    var premii : [String]?
    
    var reguli : [String] = []
    
    func parse1() -> [echipa]{
        
        xmlParser?.delegate = self
        xmlParser?.parse()
        
        return echipe
    }
    
    func parseRegulament() -> regulament{

        xmlParser?.delegate = self
        xmlParser?.parse()
        return regulamentCurent!
    }

    func parsePrizes() -> [String]{

        xmlParser?.delegate = self
        xmlParser?.parse()
        return premii!
    }
    
    
    
    init(withXML xml: String){
        if let data = xml.data(using: String.Encoding.utf8){
            xmlParser = XMLParser(data : data)
        }
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        xmlText = ""
        if elementName == "echipa"{
            echipaCurenta = echipa()
        }
        if elementName == "membri"{
            membriCurenti = membriEchipa()
        }
        if elementName == "monopost"{
            monopostCurent = monopostDetails()
        }
        if elementName == "regulamente"{
            regulamentCurent = regulament()
        }
        if elementName == "premii"{
            premii = [String]()
        }
        
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "nume"{
            echipaCurenta?.nume = xmlText.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        }
        if elementName == "membru1"{
            membriCurenti?.nume1 = xmlText.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        }
        if elementName == "membru2"{
            membriCurenti?.nume2 = xmlText.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        }
        if elementName == "membri"{
            echipaCurenta?.membri = membriCurenti!
        }
        if elementName == "sasiu"{
            monopostCurent?.sasiu = xmlText.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        }
        if elementName == "configuratie"{
            monopostCurent?.configuratie = xmlText.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        }
        if elementName == "putere"{
            monopostCurent?.putere = xmlText.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        }
        if elementName == "frane"{
            monopostCurent?.frane = xmlText.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        }
        if elementName == "monopost"{
            echipaCurenta?.monopost = monopostCurent!
        }
        if elementName == "imagine"{
            echipaCurenta?.imagine = xmlText.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        }
        if elementName == "imagine1"{
            echipaCurenta?.imagine1 = xmlText.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        }
        if elementName == "imagine2"{
            echipaCurenta?.imagine2 = xmlText.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        }
        if elementName == "echipa"{
            echipe.append(echipaCurenta!)
        }
        if elementName == "regula"{
            reguli.append(xmlText.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines))
        }
        if elementName == "tehnic"{
            regulamentCurent?.tehnic = reguli
            reguli = []
        }
        if elementName == "sportiv"{
            regulamentCurent?.sportiv = reguli
            reguli = []
        }
        if elementName == "premiu"{
            premii?.append(xmlText.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines))
        }
        
        
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        xmlText += string
    }
    
    
    
}

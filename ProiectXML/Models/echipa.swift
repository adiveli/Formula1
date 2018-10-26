//
//  echipa.swift
//  ProiectXML
//
//  Created by Adi Veliman on 25/04/2018.
//  Copyright © 2018 Adi Veliman. All rights reserved.
//

import Foundation

struct echipa{
    var nume : String
    var membri : membriEchipa
    var monopost : monopostDetails
    var imagine : String
    var imagine1 : String
    var imagine2 : String

    init() {
        nume = ""
        membri = membriEchipa()
        monopost = monopostDetails()
        imagine = ""
        imagine1 = ""
        imagine2 = ""
    }
    
}

struct membriEchipa{
    var nume1 = ""
    var nume2 = ""
}

struct monopostDetails{
    var sasiu = ""
    var configuratie = ""
    var putere = ""
    var frane = ""
}

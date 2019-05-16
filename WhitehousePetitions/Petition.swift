//
//  Petition.swift
//  WhitehousePetitions
//
//  Created by egmars.janis.timma on 08/05/2019.
//  Copyright © 2019 egmars.janis.timma. All rights reserved.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}

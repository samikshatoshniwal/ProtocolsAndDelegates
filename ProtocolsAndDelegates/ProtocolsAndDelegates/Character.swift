//
//  Character.swift
//  ProtocolsAndDelegates
//
//  Created by Samiksha on 13/06/17.
//  Copyright © 2017 Samiksha. All rights reserved.
//

import Foundation

class Character: NSObject {
    
    var name: String!
    var eatingHabits: [String]!
    var physicalCharacter: [String]!
    
    init(name: String, eatingHabits: [String], physicalCharacter: [String]) {
        self.name = name
        self.eatingHabits = eatingHabits
        self.physicalCharacter = physicalCharacter
    }
}

//
//  Goal.swift
//  CrappyBird
//
//  Created by Daniel on 2015-06-26.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import Foundation

class Goal: CCNode {
    func didLoadFromCCB() {
        physicsBody.sensor = true;
    }
}
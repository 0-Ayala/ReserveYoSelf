//
//  Reservation.swift
//  ReserveYoSelf
//
//  Created by artur oganezov on 3/12/18.
//  Copyright © 2018 iOSfinal. All rights reserved.
//

import Foundation


class  Reservation {
    var name: String
    var date: String
    var meal: String
    var table: Int
    
    init(name: String, date: String, meal: String, table: Int) {
        self.name = name
        self.date = date
        self.meal = meal
        self.table = table
    }
}

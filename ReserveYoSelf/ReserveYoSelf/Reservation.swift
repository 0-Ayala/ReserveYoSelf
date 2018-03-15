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
    var reserveDate: String
    var meal: String
    var table: Int
    
    init(name: String, reserveDate: String, meal: String, table: Int) {
        self.name = name
        self.reserveDate = reserveDate
        self.meal = meal
        self.table = table
    }
}

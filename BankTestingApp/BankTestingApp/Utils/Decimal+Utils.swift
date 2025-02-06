//
//  DecimalUtils.swift
//  BankTestingApp
//
//  Created by Francisco Aguirre on 05/02/25.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}

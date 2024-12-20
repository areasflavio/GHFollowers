//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Flávio Arêas on 10/12/24.
//

import Foundation

extension Date {
//    func convertToMonthYearFormat() -> String {
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "MMM yyyy"
//        
//        return dateFormatter.string(from: self)
//    }
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}

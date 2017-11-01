//
//  TimeInterval+Format.swift
//  Weather Gift
//
//  Created by Michelle Krameisen on 11/1/17.
//  Copyright © 2017 Krameisen. All rights reserved.
//

import Foundation

extension TimeInterval {
    
    func format(timeZone: String, dateFormatter: DateFormatter) -> String {
    let usableDate = Date(timeIntervalSince1970: self)
    dateFormatter.timeZone = TimeZone(identifier: timeZone)
    let dateString = dateFormatter.string(from: usableDate)
    return dateString
    }
}

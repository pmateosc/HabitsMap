//
//  Contribution.swift
//  HabitsView
//
//  Created by Pablo Mateos Corrales on 19/11/25.
//

import Foundation

class ContributionData {
    
    struct DateContribution: Codable {
        public var date: Date
        public var contribution: Int
        public var type: String
    }
    
    func getContributionbyDateAndType(date: Date, type: String) -> DateContribution {
        return DateContribution(date: date, contribution: 1, type: type)
    }
    
    func getContributionsByDateRangeAndType(startDate: Date, endDate: Date, type: String) -> [DateContribution] {
        return [
            DateContribution(date: startDate, contribution: 1, type: type),
            DateContribution(date: endDate, contribution: 1, type: type)
        ]
    }
}

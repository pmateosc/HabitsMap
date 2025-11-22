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
    
    /// Returns today's weekday number using the current calendar (1 = Sunday, 7 = Saturday)
    static func getTodayWeekdayNumber() -> Int {
        let calendar: Calendar = .current
        let components = calendar.dateComponents([.weekday], from: Date())
        return components.weekday ?? 1
    }

    /// Returns today's localized weekday name (e.g., "Monday") using the provided locale (defaults to current)
    func todayWeekdayName(locale: Locale = .current) -> String {
        let calendar: Calendar = .current
        let formatter = DateFormatter()
        formatter.locale = locale
        formatter.calendar = calendar
        formatter.dateFormat = "EEEE" // full weekday name
        return formatter.string(from: Date())
    }
    
}

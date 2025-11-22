//
//  Week.swift
//  HabitsView
//
//  Created by Pablo Mateos Corrales on 19/11/25.
//

import SwiftUI

struct Week: View {
    var contributions: [ContributionData.DateContribution] = []
    var title: String
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 16, weight: .bold))
                .foregroundStyle(Color.background)
            
            Grid {
                GridRow {
                    let weekDay: Int = (ContributionData.getTodayWeekdayNumber() + 5) % 7 + 1
                    ForEach(1...weekDay, id: \.self) { day in
                        // TODO: Here comes the data from the current week until the current day
                        Cell(opacity: Double.random(in: 0...0.9), active: true)
                    }
                    ForEach(1...(7-weekDay), id: \.self) { day in
                        Cell(opacity: 0.0, active: false)
                    }
                }
            }
        }
    }
}

#Preview {
    Week(title: "Deporte")
}

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
                    ForEach(1...7, id: \.self) { day in
                        Cell(opacity: Double.random(in: 0...0.9))
                    }
                }
            }
        }
    }
}

#Preview {
    Week(title: "Deporte")
}

//
//  Month.swift
//  HabitsView
//
//  Created by Pablo Mateos Corrales on 18/11/25.
//

import SwiftUI

struct Month: View {
    @State private var currentMonth = Date.now
    
    let columns = Array(repeating: GridItem(.flexible()), count: 7)
    
    var heatMapRectangleWidth: Double = 20.0
    var heatMapRectangleSpacing: Double = 2.0
    var heatMapRectangleRadius: Double = 5.0
    
    var body: some View {
        VStack(spacing: heatMapRectangleSpacing) {
            Text(currentMonth.formatted(.dateTime.year().month()))
                                .font(.system(size: 16, weight: .bold))
                                .foregroundStyle(Color.background)
            
            ForEach(0..<4) { _ in
                HStack(spacing: heatMapRectangleSpacing) {
                    ForEach(0..<7) { i in
                        Cell(heatMapRectangleWidth: heatMapRectangleWidth, heatMapRectangleRadius: heatMapRectangleRadius, opacity: Double.random(in: 0...0.9))
                    }
                }
            }
        }
    }
}

#Preview {
    Month()
}

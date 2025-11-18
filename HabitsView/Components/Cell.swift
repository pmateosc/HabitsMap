//
//  Cell.swift
//  HabitsView
//
//  Created by Pablo Mateos Corrales on 18/11/25.
//

import SwiftUI

struct Cell: View {
    var blockBackgroundColor: Color = Color.background
    var heatMapRectangleWidth: Double
    var heatMapRectangleRadius: Double
    var opacity: Double = 0.2

    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: heatMapRectangleRadius)
                    .frame(width: heatMapRectangleWidth, height: heatMapRectangleWidth)
                    .foregroundColor(.green)
                RoundedRectangle(cornerRadius: heatMapRectangleRadius)
                    .frame(width: heatMapRectangleWidth, height: heatMapRectangleWidth)
                    .foregroundColor(blockBackgroundColor.opacity(opacity))
            }
        }
    }
}

#Preview {
    Cell(heatMapRectangleWidth: 20.0, heatMapRectangleRadius: 5.0)
}

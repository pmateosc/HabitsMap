//
//  Cell.swift
//  HabitsView
//
//  Created by Pablo Mateos Corrales on 18/11/25.
//

import SwiftUI

struct Cell: View {
    var blockBackgroundColor: Color = Color.background
    var heatMapRectangleWidth: Double = 20.0
    var heatMapRectangleRadius: Double = 5.0
    var opacity: Double

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
    Cell(opacity: 0.1)
}

//
//  ContentView.swift
//  DoubleGrids
//
//  Created by Francisco Jean on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HorizontalGrid()
            VerticalGrid()
        }
    }
}

struct HorizontalGrid: View {
    let rows = [
        GridItem(), 
        GridItem()
    ]
    
    let emoji = ["heart.fill", "house.fill", "car.fill", "airplane", "bicycle", "bus.fill"]
    
    var body: some View {
        LazyHGrid(rows: rows, spacing: 0){
            ForEach(emoji, id: \.self){ emoji in
                Image(systemName: emoji)
            }
        }
        .frame(height: 100 )
    }
}

struct VerticalGrid: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let emoji = ["flame.fill", "bolt.fill", "cloud.fill", "star.fill", "moon.fill", "sun.max.fill"]
    
    var body: some View {
        LazyVGrid(columns: columns){
            ForEach(emoji, id: \.self){ emoji in
                Image(systemName: emoji)
            }
        }
        .frame(width: 100)
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  RulerView
//
//  Created by Huy vu on 16/8/24.
//

import SwiftUI

struct RulerView: View {
    var body: some View {
        Canvas { context, size in
            let height = size.height
            let unitHeight: CGFloat = 10 // khoảng cách giữa các vạch
            
            for i in stride(from: 0, to: Int(height), by: Int(unitHeight)) {
                let isLongMark = i % 100 == 0
                let lineLength: CGFloat = isLongMark ? 40 : (i % 50 == 0 ? 25 : 15)
                
                // Vẽ vạch
                context.stroke(Path { path in
                    path.move(to: CGPoint(x: 0, y: CGFloat(i)))
                    path.addLine(to: CGPoint(x: lineLength, y: CGFloat(i)))
                }, with: .color(.black), lineWidth: 1)
                
                // Vẽ số bên cạnh các vạch dài
                if isLongMark {
                    let text = Text("\(i / 10)")
                    context.draw(text, at: CGPoint(x: lineLength + 10, y: CGFloat(i)))
                }
            }
        }
        .frame(width: 60, height: 500)
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            RulerView()
        }
    }
}

#Preview {
    ContentView()
}

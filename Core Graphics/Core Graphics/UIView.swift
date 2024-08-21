//
//  UIView.swift
//  Core Graphics
//
//  Created by Huy vu on 16/8/24.
//

import UIKit

class RulerView: UIView {

    override func draw(_ rect: CGRect) {
        // Lấy context để vẽ
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        // Vẽ khung của cái thước
        context.setStrokeColor(UIColor.black.cgColor)
        context.setLineWidth(2.0)
        context.addRect(rect.insetBy(dx: 10, dy: 10))
        context.strokePath()
        
        // Vẽ các vạch chia độ
        let numberOfTicks = 10
        let tickWidth: CGFloat = 2.0
        let tickSpacing = (rect.width - 20) / CGFloat(numberOfTicks)
        
        context.setLineWidth(tickWidth)
        for i in 0...numberOfTicks {
            let x = 10 + CGFloat(i) * tickSpacing
            context.move(to: CGPoint(x: x, y: rect.height - 10))
            context.addLine(to: CGPoint(x: x, y: rect.height - 30))
        }
        context.strokePath()
    }
}

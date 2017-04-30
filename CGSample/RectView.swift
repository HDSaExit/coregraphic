//
//  RectView.swift
//  CGSample
//
//  Created by Vansa Pha on 11/28/16.
//  Copyright © 2016 Vansa Pha. All rights reserved.
//

import UIKit

class RectView: UIView {

    var currentShape:Int=0
    
    init(frame: CGRect, shape: Int) {
        super.init(frame: frame)
        self.currentShape = shape
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        switch currentShape {
        case 0: drawRectangle()
        case 1: drawTrigle()
        case 2: drawCircle()
        default: print("default")
        }
    }
    
    func drawRectangle(){
        let center=CGPoint(x: self.frame.size.width/2.0, y: self.frame.size.height/2.0)
        let rectWidth:CGFloat=100.0
        let rectHeight:CGFloat=100.0
        
        let context=UIGraphicsGetCurrentContext()!
        context.addRect(CGRect(x: center.x-(0.5*rectWidth), y: center.y-(0.5*rectHeight), width: rectWidth, height: rectHeight))
        context.setLineWidth(10)
        context.setStrokeColor(UIColor.white.cgColor)
        context.strokePath()
    }
    func drawTrigle(){
        let ctx = UIGraphicsGetCurrentContext()!
        ctx.move(to: CGPoint(x: 20.0, y: 50.0))
        ctx.addLine(to: CGPoint(x: 250.0, y: 135.0))
        ctx.addLine(to: CGPoint(x: 20.0, y: 200.0))
        ctx.setLineWidth(5)
        ctx.setStrokeColor(UIColor.white.cgColor)
        ctx.closePath()
        ctx.strokePath()
    }
    func drawCircle(){
        let center = CGPoint(x: self.frame.size.width / 2.0, y: self.frame.size.height / 2.0)
        let ctx = UIGraphicsGetCurrentContext()!
        ctx.setLineWidth(5)
        ctx.setStrokeColor(UIColor.white.cgColor)
        let x:CGFloat = center.x
        let y:CGFloat = center.y
        let radius: CGFloat = 100.0
        let endAngle: CGFloat = CGFloat(2 * M_PI)
        ctx.addArc(center: CGPoint(x: x,y: y), radius: radius, startAngle: 0, endAngle: endAngle, clockwise: true)
        ctx.strokePath()
    }

}

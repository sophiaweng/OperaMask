//
//  ContentView.swift
//  OperaMask
//
//  Created by 翁淑惠 on 2020/11/16.
//

import SwiftUI

struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        
        //View
        let view = UIView()
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        
        
        //Face
        let layerFace = CAShapeLayer()
        layerFace.fillColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        let pathFace = UIBezierPath(ovalIn: CGRect(x: 50, y: 150, width: 320, height: 500))
        layerFace.path = pathFace.cgPath
        view.layer.addSublayer(layerFace)
        
        
        //Mouth
        let layerMouth = CAShapeLayer()
        let pathMouth = UIBezierPath(ovalIn: CGRect(x: 170, y: 550, width: 80, height: 30))
        layerMouth.path = pathMouth.cgPath
        view.layer.addSublayer(layerMouth)
        
        //MouthBottom
        let layerMouthBottom = CAShapeLayer()
        layerMouthBottom.fillColor = CGColor(red: 216/255, green: 191/255, blue: 216/255, alpha: 1)
        let pathMouthBottom = UIBezierPath(ovalIn: CGRect(x: 188, y: 585, width: 43, height: 10))
        layerMouthBottom.path = pathMouthBottom.cgPath
        view.layer.addSublayer(layerMouthBottom)
        
        //Wide Mouth
//        let pathWideMouth = UIBezierPath(ovalIn: CGRect(x: 100, y: 550, width: 220, height: 30))
//        layerMouth.path = pathWideMouth.cgPath
        
        //Big Mouth
//        let pathBigMouth = UIBezierPath(ovalIn: CGRect(x: 170, y: 450, width: 80, height: 130))
//        layerMouth.path = pathBigMouth.cgPath
        
        
        //Eye
        let pathEye = UIBezierPath(ovalIn: CGRect(x: 100, y: 140, width: 60, height: 30))
        
        //EyeBottom
        let pathEyeBtm = UIBezierPath(ovalIn: CGRect(x: 105, y: 180, width: 50, height: 10))
        
        //EyePaintTop
        /* circle path
        let aDegree = CGFloat.pi / 180
        let pathEyePaintTop = UIBezierPath(arcCenter: CGPoint(x: 128, y: 130), radius: 25, startAngle: aDegree * 180, endAngle: 0, clockwise: true)*/
        let pathEyePaintTop = UIBezierPath()
        pathEyePaintTop.move(to: CGPoint(x: 110, y: 130))
        pathEyePaintTop.addQuadCurve(to: CGPoint(x: 150, y: 130), controlPoint: CGPoint(x: 145, y: -80))
        
        //EyePaintBtm
        let pathEyePaintBtm = UIBezierPath()
        pathEyePaintBtm.move(to: CGPoint(x: 110, y: 200))
        pathEyePaintBtm.addQuadCurve(to: CGPoint(x: 150, y: 200), controlPoint: CGPoint(x: 145, y: 480))
        
        
        //LeftView
        let leftView = UIView(frame: CGRect(x: 0, y: 200, width: 210, height: 400))
        //leftView.backgroundColor = UIColor.blue
        
        //LeftEye
        let layerLeftEye = CAShapeLayer()
        layerLeftEye.path = pathEye.cgPath
        leftView.layer.addSublayer(layerLeftEye)
        
        //LeftEyeBottom
        let layerLeftEyeBtm = CAShapeLayer()
        layerLeftEyeBtm.path = pathEyeBtm.cgPath
        leftView.layer.addSublayer(layerLeftEyeBtm)
        
        //LeftEyePaintTop
        let layerLeftEyePaintTop = CAShapeLayer()
        layerLeftEyePaintTop.fillColor = CGColor(red: 216/255, green: 191/255, blue: 216/255, alpha: 1)
        layerLeftEyePaintTop.path = pathEyePaintTop.cgPath
        leftView.layer.addSublayer(layerLeftEyePaintTop)
        
        //LeftEyePaintBtm
        let layerLeftEyePaintBtm = CAShapeLayer()
        layerLeftEyePaintBtm.fillColor = CGColor(red: 216/255, green: 191/255, blue: 216/255, alpha: 1)
        layerLeftEyePaintBtm.path = pathEyePaintBtm.cgPath
        leftView.layer.addSublayer(layerLeftEyePaintBtm)
        
        
        //RightView
        let rightView = UIView(frame: CGRect(x: 210, y: 200, width: 210, height: 400))
        //rightView.backgroundColor = UIColor.red
        
        //RightEye
        let layerRightEye = CAShapeLayer()
        layerRightEye.path = pathEye.cgPath
        rightView.layer.addSublayer(layerRightEye)
        
        //RightEyeBottom
        let layerRightEyeBtm = CAShapeLayer()
        layerRightEyeBtm.path = pathEyeBtm.cgPath
        rightView.layer.addSublayer(layerRightEyeBtm)
        
        //RightEyePaintTop
        let layerRightEyePaintTop = CAShapeLayer()
        layerRightEyePaintTop.fillColor = CGColor(red: 216/255, green: 191/255, blue: 216/255, alpha: 1)
        layerRightEyePaintTop.path = pathEyePaintTop.cgPath
        rightView.layer.addSublayer(layerRightEyePaintTop)
        
        //RightEyePaintBtm
        let layerRightEyePaintBtm = CAShapeLayer()
        layerRightEyePaintBtm.fillColor = CGColor(red: 216/255, green: 191/255, blue: 216/255, alpha: 1)
        layerRightEyePaintBtm.path = pathEyePaintBtm.cgPath
        rightView.layer.addSublayer(layerRightEyePaintBtm)
        
        //mirror RightView
        rightView.transform = CGAffineTransform(scaleX: -1, y: 1)
        
        
        view.addSubview(leftView)
        view.addSubview(rightView)
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}

struct ContentView: View {
    var body: some View {
        DrawView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

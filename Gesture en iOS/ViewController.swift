//
//  ViewController.swift
//  Gesture en iOS
//
//  Created by alumno on 9/03/17.
//  Copyright © 2017 william. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tipo:String!
    
    @IBOutlet weak var contenedor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(tipo)
        
        switch tipo {
        case "UITapGestureRecognizer":
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tap))
            tapGestureRecognizer.numberOfTapsRequired = 2
            contenedor.addGestureRecognizer(tapGestureRecognizer)
        case "UIPinchGestureRecognizer":
            let pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(pinch))
            pinchGestureRecognizer.scale = 2
            contenedor.addGestureRecognizer(pinchGestureRecognizer)
        case "UIRotationGestureRecognizer":
            let rotationGestureRecognizer = UIRotationGestureRecognizer(target: self, action: #selector(rotation))
            //rotationGestureRecognizer.rotation = 2
            contenedor.addGestureRecognizer(rotationGestureRecognizer)
        case "UISwipeGestureRecognizer":
            let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
            swipeGestureRecognizer.direction = UISwipeGestureRecognizerDirection.right
            swipeGestureRecognizer.numberOfTouchesRequired = 2
            contenedor.addGestureRecognizer(swipeGestureRecognizer)
        case "UIPanGestureRecognizer":
            let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(pan))
            panGestureRecognizer.maximumNumberOfTouches = 3
            panGestureRecognizer.minimumNumberOfTouches = 1
            contenedor.addGestureRecognizer(panGestureRecognizer)
        case "UIScreenEdgePanGestureRecognizer" :
            let screenEdgePanGestureRecognizer = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(screenEdgePan))
            screenEdgePanGestureRecognizer.edges = UIRectEdge.right
            self.view.addGestureRecognizer(screenEdgePanGestureRecognizer)
        default:
            let longPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(longPress))
            longPressGestureRecognizer.minimumPressDuration = 2
            longPressGestureRecognizer.numberOfTapsRequired = 0
            longPressGestureRecognizer.numberOfTouchesRequired = 1
            contenedor.addGestureRecognizer(longPressGestureRecognizer)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tap(){
        print("tap")
    }
    
    func pinch(sender:UIPinchGestureRecognizer){
        print("pinch")
        print("Scale: \(sender.scale)")
        print("Velocidad: \(sender.velocity)")
    }
    
    func rotation(sender:UIRotationGestureRecognizer){
        print("rotation")
        print("rotatio: \(sender.rotation)")
        print("velocidad: \(sender.velocity)")
    }
    
    func swipe (sender:UISwipeGestureRecognizer){
        print("swipe")
        //print("direction: \(sender.direction)")
    }
    
    func pan (sender:UIPanGestureRecognizer){
        print("pan")
        print("maximum: \(sender.maximumNumberOfTouches)")
        print("minimum: \(sender.minimumNumberOfTouches)")
    }
    
    func screenEdgePan(){
        print("screenEdgePan")
    }
    
    func longPress(){
        print("longPress")
    }

}


//
//  ViewController.swift
//  EvenMorePixelyFun
//
//  Created by Stuart on 09/12/2020.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView = UIImageView()
    
    var x: Int = 0
    var y: Int = 0
    var renderer = Renderer()
    
//    var testArray = [1,2,3,4,5,6]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpImageView(imageView: imageView)
        
        let displayLink = CADisplayLink(target: self, selector: #selector(update))
        displayLink.add(to: .main, forMode: .common)
    
    }
    
    @objc func update(_ displayLink: CADisplayLink) {
//        renderer.drawNoise()
        renderer.drawBars()
        imageView.image = UIImage(bitmap: renderer.bitmap)
        renderer.rotatePalette()
    }
    
    func setUpImageView(imageView: UIImageView) {
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .black
        imageView.layer.magnificationFilter = .nearest
    }
}


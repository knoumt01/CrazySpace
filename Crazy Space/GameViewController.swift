//
//  GameViewController.swift
//  Crazy Space
//
//  Created by MK on 5/13/15.
//  Copyright (c) 2015 MK Design Software. All rights reserved.
//

import SpriteKit

class GameViewController: UIViewController {
    var scene: GameScene!
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let skView = view as SKView
        skView.showsFPS = true
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        skView.presentScene(scene)
    }
}
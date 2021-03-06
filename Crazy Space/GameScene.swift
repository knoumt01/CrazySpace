// GameScene.swift
// part of Crazy Space, the first iOS game developed by MK
// (c) 2015 All Rights Reserved

import SpriteKit

class GameScene: SKScene {
    
    let backgroundNode : SKSpriteNode?
    var playerNode : SKSpriteNode?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size:CGSize) {
        super.init(size: size)
        backgroundColor = SKColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        
        backgroundNode  = SKSpriteNode(imageNamed: "Background")
        backgroundNode!.size.width = self.frame.size.width
        backgroundNode!.anchorPoint = CGPoint(x: 0.5, y:0.0)
        backgroundNode!.position = CGPoint(x: size.width / 2.0, y:0.0)
        addChild(backgroundNode!)
        
        playerNode = SKSpriteNode(imageNamed: "Player")
        playerNode!.position = CGPoint(x: size.width / 2.0, y: 80.0)
        addChild(playerNode!)
    }
}
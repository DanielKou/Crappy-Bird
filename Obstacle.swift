import Foundation

class Obstacle : CCNode {
    weak var top : CCNode!
    weak var bottom : CCNode!
    
    let topMinimumPositionY : CGFloat = 128
    let bottomMaximumPositionY : CGFloat = 440
    let Distance : CGFloat = 142
    
    func didLoadFromCCB() {
        top.physicsBody.sensor = true
        bottom.physicsBody.sensor = true
    }
    
    func setupRandomPosition() {
        let randomPrecision : UInt32 = 100
        let random = CGFloat(arc4random_uniform(randomPrecision)) / CGFloat(randomPrecision)
        let range = bottomMaximumPositionY - Distance - topMinimumPositionY
        top.position = ccp(top.position.x, topMinimumPositionY + (random * range));
        bottom.position = ccp(bottom.position.x, top.position.y + Distance);
    }
}
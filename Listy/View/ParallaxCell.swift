//
//  ParallaxCell.swift
//  Listy
//
//  Created by Asset Ryskul on 8/23/20.
//  Copyright © 2020 Asset Ryskul. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

    @IBOutlet weak var parallaxImageView: UIImageView!
    @IBOutlet weak var parallaxLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupParallax()
    }
    
    func configureCell(forImage image: UIImage, forDescription title: String) {
        parallaxImageView.image = image
        parallaxLabel.text = title
    }
    
    func setupParallax() {
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        parallaxImageView.addMotionEffect(motionEffectGroup)
    }



}

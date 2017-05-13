//
//  UIColorEx.swift
//  LiquidLoading
//
//  Created by Takuma Yoshida on 2015/08/21.
//  Copyright (c) 2015年 yoavlt. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    var redV: CGFloat {
        get {
            let components = self.cgColor.components
            return components![0]
        }
    }
    
    var greenV: CGFloat {
        get {
            let components = self.cgColor.components
            return components![1]
        }
    }
    
    var blueV: CGFloat {
        get {
            let components = self.cgColor.components
            return components![2]
        }
    }
    
    var alphaV: CGFloat {
        get {
            return self.cgColor.alpha
        }
    }

    func alpha(_ alpha: CGFloat) -> UIColor {
        return UIColor(red: self.redV, green: self.greenV, blue: self.blueV, alpha: alpha)
    }
    
    func white(_ scale: CGFloat) -> UIColor {
        return UIColor(
            red: self.redV + (1.0 - self.redV) * scale,
            green: self.greenV + (1.0 - self.greenV) * scale,
            blue: self.blueV + (1.0 - self.blueV) * scale,
            alpha: 1.0
        )
    }
}

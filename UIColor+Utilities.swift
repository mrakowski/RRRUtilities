//
//  UIColor+Utilities.swift
//  RRRUtilities
//
//  Created by Michael Rakowski on 8/7/16.
//  Copyright © 2016 Constant Practice Inc.

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.


import Foundation
import UIKit


extension UIColor {
    
    // MARK: 
    
    class func desaturate(color: UIColor) -> UIColor {
    
        var desaturatedColor = color
        
        var hue : CGFloat = 0.0
        var sat : CGFloat = 0.0
        var bri : CGFloat = 0.0
        var alp : CGFloat = 0.0
        
        let gotHSB = color.getHue(&hue, saturation: &sat, brightness: &bri, alpha: &alp)
        
        if (gotHSB) {
            desaturatedColor = UIColor.init(hue: hue/2, saturation: sat/2, brightness: bri/2, alpha: alp)
        }
        
        return desaturatedColor
    }
    
    class func brighten(color: UIColor) -> UIColor {
     
        return self.brighten(color: color, multiplier: 1.2)
    }
    
    class func brighten(color: UIColor, multiplier: CGFloat) -> UIColor {
        
        var brighterColor = color
        
        var hue : CGFloat = 0.0
        var sat : CGFloat = 0.0
        var bri : CGFloat = 0.0
        var alp : CGFloat = 0.0
        
        let gotHSB = color.getHue(&hue,
                                  saturation: &sat,
                                  brightness: &bri,
                                  alpha: &alp)
        
        if (gotHSB) {
            brighterColor = UIColor.init(hue: hue,
                                         saturation: sat,
                                         brightness: bri*multiplier,
                                         alpha: alp)
        }
        
        return brighterColor
    }
    
}

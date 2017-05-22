//
//  UILabel+LineHeight.swift
//  Pods
//
//  Created by Jason Prenger on 5/22/17.
//
//

import Foundation

extension UILabel {
    func setLineHeight(lineHeight: CGFloat) {
        if (self.text != nil) {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = lineHeight
            paragraphStyle.alignment = self.textAlignment
            
            let attrString = NSMutableAttributedString(string: self.text!)
            attrString.addAttribute(NSFontAttributeName, value: self.font, range: NSMakeRange(0, attrString.length))
            attrString.addAttribute(NSParagraphStyleAttributeName, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
            self.attributedText = attrString
        }
    }
}

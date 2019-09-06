//
//  NSAttributedString+SXExtension.swift
//  SXAutoStreets
//
//  Created by qianbingzhen on 2019/7/20.
//  Copyright © 2019年 wuhao. All rights reserved.
//

import Foundation

// MARK: -使用图像和文本生成上下排列的属性文本
extension NSAttributedString {
    
    class func imageTextInit(image: UIImage, imageWH: CGFloat, labelTitle: String, fontSize: CGFloat, titleColor: UIColor, labelSpacing: CGFloat) -> NSAttributedString{
        
        //图片文本
        let attachment = NSTextAttachment()
        attachment.image = image
        
//        attachment.bounds = CGRect(x: 0, y: 0, width: imageWH, height: imageWH)
        attachment.bounds = CGRect(x: 0, y: 10, width: imageWH, height: imageWH)

        let imageText = NSAttributedString(attachment: attachment)
        //标题文本
//        let titleDict = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: fontSize), NSAttributedStringKey.foregroundColor: titleColor]
//        let text = NSAttributedString(string: labelTitle, attributes: titleDict)
//        let text = NSAttributedString(string: labelTitle)

        //换行文本
        let spaceDict = [NSAttributedStringKey.font:UIFont.systemFont(ofSize:labelSpacing)]
//        let lineText = NSAttributedString(string: "\n\n", attributes: spaceDict)
        
        
        //合并文字
        let mutableAttr = NSMutableAttributedString(attributedString: imageText)
//        mutableAttr.append(lineText)
//        mutableAttr.append(text)
        
        return mutableAttr.copy() as! NSAttributedString
    }
    
}


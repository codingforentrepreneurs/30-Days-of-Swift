//
//  CustomCollectionViewCell.swift
//  Simple
//
//  Created by Justin Mitchel on 12/17/14.
//  Copyright (c) 2014 Coding for Entrepreneurs. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    var textView:UITextView!
    var imageView:UIImageView!
    
    required init(coder aDecoder:NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame:CGRect) {
        super.init(frame:frame)
        
        imageView = UIImageView(frame: CGRectMake(0, 0, frame.size.width, frame.size.height))
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        imageView.clipsToBounds = true
        
        contentView.addSubview(imageView)
        
        let tvFrame = CGRectMake(0, frame.size.height * 1/2, frame.size.width, frame.size.height * 1/3)
        textView = UITextView(frame: tvFrame)
        textView.font = UIFont.systemFontOfSize(22.0)
        textView.backgroundColor = UIColor(white: 1.0, alpha: 0.3)
        textView.textAlignment = .Center
        textView.scrollEnabled = false
        textView.userInteractionEnabled = false
        textView.editable = false
        
        contentView.addSubview(textView)
        
    }
}

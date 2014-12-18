//
//  LocationCollectionViewCell.swift
//  Simple
//
//  Created by Justin Mitchel on 12/18/14.
//  Copyright (c) 2014 Coding for Entrepreneurs. All rights reserved.
//

import UIKit

class LocationCollectionViewCell: UICollectionViewCell {
    var textView:UITextView!
    required init(coder aDecoder:NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame:CGRect) {
        super.init(frame:frame)
        
        
        let tvFrame = CGRectMake(10, 0, frame.size.width - 20, frame.size.height)
        textView = UITextView(frame: tvFrame)
        textView.font = UIFont.systemFontOfSize(20.0)
        textView.backgroundColor = UIColor(white: 1.0, alpha: 0.3)
        textView.textAlignment = .Left
        textView.scrollEnabled = false
        textView.userInteractionEnabled = false
        textView.editable = false
        
        contentView.addSubview(textView)
        
    }

}

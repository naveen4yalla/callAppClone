//
//  BackspaceCell.swift
//  SwiftCall
//
//  Created by Naveen Yalla on 10/12/22.
//

import UIKit

class BackspaceCell: UICollectionViewCell {

    let imageView = UIImageView(image: #imageLiteral(resourceName: "phone_backspace"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        backgroundColor = .red
        
        imageView.contentMode = .scaleAspectFit
        addSubview(imageView)
        imageView.centerInSuperview(size: .init(width: 40, height: 40))
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.width / 2
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}

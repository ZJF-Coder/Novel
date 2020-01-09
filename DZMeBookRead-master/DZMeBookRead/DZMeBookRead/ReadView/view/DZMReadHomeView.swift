//
//  DZMReadHomeView.swift
//  DZMeBookRead
//
//  Created by dengzemiao on 2019/5/7.
//  Copyright © 2019 DZM. All rights reserved.
//

import UIKit
import SnapKit

class DZMReadHomeView: UIView {
    
    /// 书籍名称
//    private var name:UILabel!
    
    /// 当前阅读模型
    var readModel:DZMReadModel! {
        
        didSet{
            
//            name.text = readModel.bookName
        }
    }

    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        addSubviews()
    }
    
    private func addSubviews() {
        
        // 书籍名称
        /*
        name = UILabel()
        name.textAlignment = .center
        name.font = DZM_FONT_BOLD_SA(50)
        name.textColor = DZMReadConfigure.shared().textColor
        addSubview(name)
         */
        
        let backImage = UIImageView()
        backImage.image = UIImage.init(named: "readHomeBorderImage")
        self.addSubview(backImage)
        backImage.snp.makeConstraints { (make) in
            make.left.equalTo(14.5)
            make.right.equalTo(-14.5)
            make.top.equalTo(20)
            make.bottom.equalTo(-14.5)
        }
        
        let bannerImage = UIImageView()
        bannerImage.image = UIImage.init(named: "testbook")
        bannerImage.contentMode = .scaleAspectFill
        self.addSubview(bannerImage)
        bannerImage.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.width.equalTo(190)
            make.height.equalTo(250)
        }
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
//        name.frame = bounds
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
}

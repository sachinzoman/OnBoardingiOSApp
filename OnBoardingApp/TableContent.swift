//
//  TableContent.swift
//  OnBoardingApp
//
//  Created by Sachin Singh on 26/06/19.
//  Copyright © 2019 Sachin Singh. All rights reserved.
//

import UIKit

class TableContent: UITableViewCell {

    let myImageView = UIImageView()
    let titleLable  = UILabel()
    let subtitle = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style:style, reuseIdentifier: reuseIdentifier)
        createViews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func createViews(){
        contentView.addSubview(myImageView)
        contentView.addSubview(titleLable)
        contentView.addSubview(subtitle)
        
        let paddingConstant: CGFloat = 8
        
        
//        myImageView.layer.cornerRadius = 28
//        myImageView.layer.borderColor = UIColor.yellow.cgColor
//        myImageView.layer.borderWidth = 1.8
        
        myImageView.set(.top(contentView,paddingConstant),
                        .leading(contentView,paddingConstant),
                        .width(100),
                        .height(100),
                        .bottom(contentView,paddingConstant))
        
        titleLable.set(.top(myImageView),
                       .after(myImageView,paddingConstant),
                       .trailing(contentView,paddingConstant))
        
        subtitle.set(.below(titleLable,paddingConstant),
                     .after(myImageView,paddingConstant),
                     .trailing(contentView,paddingConstant)
        )
        
        titleLable.text = "Sachin"
        subtitle.text = "Software Developer Engineer"
        myImageView.backgroundColor = .black
        
    }
    
    public func setData(titleText: String, subtitleText:String, image:UIImage){
        titleLable.text = titleText
        subtitle.text = subtitleText
        myImageView.image = image
    }
    
}

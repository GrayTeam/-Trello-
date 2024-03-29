//
//  MyTableViewCell.swift
//  LectionScrollView
//
//  Created by Alexander on 12.11.2019.
//  Copyright © 2019 Leonid Serebryanyy. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    public static let reuseId = "dkjsf"
    
    public let nameLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        nameLabel.frame = self.contentView.frame
        nameLabel.center = self.contentView.center
        nameLabel.textAlignment = .center
        nameLabel.font = .systemFont(ofSize: 20)
        nameLabel.numberOfLines = 3
        
        
        contentView.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    }
    
    required init?(coder: NSCoder) {
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

}

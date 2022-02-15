//
//  InstaCell.swift
//  InstagramTest
//
//  Created by Ruslan Sharshenov on 15.02.2022.
//

import Foundation
import UIKit
import SnapKit

class StoryCell: UICollectionViewCell{
    
    private lazy var profileImage: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    private lazy var profileLabel: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 15, weight: .semibold)
        return view
    }()
    
    override func layoutSubviews() {
        addSubview(profileImage)
        profileImage.snp.makeConstraints { make in
            make.centerX.top.equalToSuperview()
            make.width.equalToSuperview().dividedBy(4)
            make.height.equalTo(frame.width / 4)
        }
        addSubview(profileLabel)
        profileLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.bottom)
            make.centerX.equalToSuperview()
        }
    }
    
    func fill(model: InstaModel){
        self.profileImage.image = UIImage(systemName: model.profileImage!)
        self.profileLabel.text = model.name!
    }
    
}

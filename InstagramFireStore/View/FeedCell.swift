//
//  FeedCell.swift
//  InstagramFireStore
//
//  Created by Rafael.Ahmedov on 8/4/21.
//

import UIKit

class FeedCell: UICollectionViewCell {
    
    
    // MARK: - Properties
   
    private let profileImage : UIImageView = {
       let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
        img.isUserInteractionEnabled = true
        img.image = #imageLiteral(resourceName: "venom-7")
        return img
    }()
    
    private lazy var userNameButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.black, for: .normal)
        button.setTitle("rafael", for: .normal)
        button.titleLabel?.font =  UIFont.boldSystemFont(ofSize: 13)
        button.addTarget(self, action: #selector(didTapUsername), for: .touchUpInside)
        return button
    }()
    
    private let postImageView : UIImageView = {
        let img = UIImageView()
         img.contentMode = .scaleAspectFill
         img.clipsToBounds = true
         img.isUserInteractionEnabled = true
         img.image = #imageLiteral(resourceName: "venom-7")
         return img
    }()
    
    private lazy var likeButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "like_unselected"), for: .normal)
        button.tintColor = .black
        return button
    }()
 
    
    private lazy var commentButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "comment"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    private lazy var shareButton : UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "send2"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    private let likesLabel : UILabel = {
        let label = UILabel()
        label.text = "1 like"
        label.tintColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 13)
        return label
    }()
    
 
    private let captionLabel : UILabel = {
        let label = UILabel()
        label.text = "joker Rafael"
        label.tintColor = .black
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
  
    
    private let postTimeLabel : UILabel = {
        let label = UILabel()
        label.text = "2 days ago"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    
    // MARK: - LifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        configureProfileImage()
        configureUserNameButton()
        configurePostImageView()
        configureActionButtons()
        configureLikeLabel()
        configureCaptionLabel()
        configurePostTimeLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Actions
    
    @objc func didTapUsername(){
        
    }
    
    
    // MARK:- Helpers
    
    func configureActionButtons(){
        let stackView = UIStackView(arrangedSubviews: [likeButton,commentButton,shareButton])
        addSubview(stackView)
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.anchor(top:postImageView.bottomAnchor,width: 120,height: 50)
    }
    
    func configureProfileImage(){
        addSubview(profileImage)
        profileImage.anchor(top:topAnchor,left: leftAnchor,paddingTop: 8,paddingLeft: 8)
        profileImage.setDimensions(height: 40, width: 40)
        profileImage.layer.cornerRadius = 40/2
    }
    
    func configureUserNameButton() {
        addSubview(userNameButton)
        userNameButton.centerY(inView: profileImage, leftAnchor: profileImage.rightAnchor, paddingLeft: 8)
    }
    
    func configurePostImageView(){
        addSubview(postImageView)
        postImageView.anchor(top: profileImage.bottomAnchor,left: leftAnchor,right: rightAnchor, paddingTop: 8)
        postImageView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true
    }
    
    func configureLikeLabel(){
        addSubview(likesLabel)
        likesLabel.anchor(top:likeButton.bottomAnchor, left: leftAnchor, paddingLeft: 8)
    }
    
    func configureCaptionLabel(){
        addSubview(captionLabel)
        captionLabel.anchor(top:likesLabel.bottomAnchor, left: leftAnchor, paddingTop: 4, paddingLeft: 8)
    }
    
    func configurePostTimeLabel(){
        addSubview(postTimeLabel)
        postTimeLabel.anchor(top:captionLabel.bottomAnchor, left: leftAnchor, paddingTop: 4, paddingLeft: 8)
    }
}

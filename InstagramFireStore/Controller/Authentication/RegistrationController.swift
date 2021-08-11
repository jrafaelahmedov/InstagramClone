//
//  RegistrationController.swift
//  InstagramFireStore
//
//  Created by Rafael.Ahmedov on 8/4/21.
//


import UIKit

class RegistrationController: UIViewController {
    
    
    //MARK:- Properties
    
    private let plusPhotoButton :UIButton = {
        let btn = UIButton(type: .system)
        btn.setImage(#imageLiteral(resourceName: "plus_unselected"), for: .normal)
        btn.tintColor = .white
        
        return btn
    }()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    
    // MARK:- Helpers
    
    func configureUI(){
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = false
        
        let navAppearance = UINavigationBarAppearance()
        navAppearance.configureWithTransparentBackground()
        self.navigationItem.standardAppearance = navAppearance
        configureGradientLayer()
     }
    
}

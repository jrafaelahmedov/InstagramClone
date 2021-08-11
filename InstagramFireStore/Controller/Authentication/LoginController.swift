//
//  LoginController.swift
//  InstagramFireStore
//
//  Created by Rafael.Ahmedov on 8/4/21.
//

import UIKit

class LoginController: UIViewController {
    
    
    // MARK:- Properties
    private let iconImage : UIImageView = {
        let img = UIImageView(image: #imageLiteral(resourceName: "Instagram_logo_white"))
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    private let emailTextField : CustomTextField = {
        let tv = CustomTextField(placeHolder: "Email")
        tv.keyboardType = .emailAddress
        return tv
    }()
 
    
    private let passwordTextField : CustomTextField = {
        let tv = CustomTextField(placeHolder: "Password")
        tv.isSecureTextEntry = true
        return tv
    }()
    
    
    private let loginButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.customButton(title: "Log In")
        return btn
    }()
    
    
    private let dontHaveAccountButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.attributedTitle(firstPart: "Don't have an account?", secondPart: "Sign Up")
        btn.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        return btn
    }()

    private let forgotPasswordButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.attributedTitle(firstPart: "Forgot your password?", secondPart: "Get help signing in")
        return btn
    }()
    
    // MARK:- LifeCycler
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Actions
    
    @objc func handleSignUp(){
        let controller = RegistrationController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
    // MARK: - Helpers
    
    func configureUI(){
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        let navAppearance = UINavigationBarAppearance()
        navAppearance.configureWithTransparentBackground()
        self.navigationItem.standardAppearance = navAppearance
        configureGradientLayer()
        addIconImage()
        addFieldsInStack()
        addRegisterButton()
     }
    
    func addIconImage(){
        view.addSubview(iconImage)
        iconImage.centerX(inView: view)
        iconImage.setDimensions(height: 80, width: 120)
        iconImage.anchor(top: view.safeAreaLayoutGuide.topAnchor,paddingTop: 32)
    }
    
    func addFieldsInStack(){
        let stack = UIStackView(arrangedSubviews: [emailTextField,
                                                   passwordTextField,
                                                   loginButton,
                                                   forgotPasswordButton])
        view.addSubview(stack)
        stack.axis = .vertical
        stack.spacing = 20
        stack.anchor(top: iconImage.bottomAnchor,
                     left: view.leftAnchor,
                     right: view.rightAnchor,
                     paddingTop: 32,
                     paddingLeft: 32,
                     paddingRight: 32)
    }
    
    func addRegisterButton(){
        view.addSubview(dontHaveAccountButton)
        dontHaveAccountButton.centerX(inView: view)
        dontHaveAccountButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor)
    }
}

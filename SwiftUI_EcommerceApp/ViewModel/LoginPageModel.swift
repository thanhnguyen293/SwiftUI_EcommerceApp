//
//  LoginPageModel.swift
//  SwiftUI_ECommerceApp
//
//  Created by Thành Nguyễn on 15/09/2022.
//

import SwiftUI

class LoginPageModel: ObservableObject {
    
    // Login Properties
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    
    // Sign Up Properties
    @Published var re_Enter_Password: String = ""
    @Published var showReEnterPassword: Bool = false
    
    func Login (){
        
    }
    
    func SignUp (){
        
    }

    func ForgotPassword (){
        
    }

}

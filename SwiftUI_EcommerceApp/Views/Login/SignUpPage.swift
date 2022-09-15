//
//  SignUpPage.swift
//  SwiftUI_ECommerceApp
//
//  Created by Thành Nguyễn on 15/09/2022.
//

import SwiftUI

struct SignUpPage: View {
    @StateObject var loginData: LoginPageModel = LoginPageModel()
    var body: some View {
        VStack(spacing: 0){
            Image("sign_up")
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame( height: getRect().height*0.23)
                .padding(.horizontal, 60)
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 0){
                    Text("Sign Up")
                        .font(.system(size: 34))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top, 30)
                        .foregroundColor(Color(hex: 0x200A4D))
                    
                    CustomTextField(icon: "verified_icon", title: "Name", hint: "Enter Your Name", value: $loginData.name, showPassword: $loginData.showPassword)
                        .padding(.top, 24)
                    
                    CustomTextField(icon: "verified_icon", title: "Email", hint: "Enter Your Email", value: $loginData.email, showPassword: $loginData.showPassword)
                        .padding(.top, 14)

                    CustomTextField(icon:"eye", title: "Password", hint: "Enter password", value: $loginData.password, showPassword: $loginData.showPassword)
                        .padding(.top, 14)
                    
                    HStack(spacing: 0){
                        Text("Yes, I agree to the ")
                            .font(.system(size: 13))
                            .fontWeight(.medium)
                            .foregroundColor(Color(hex: 0x200A4D, alpha: 0.6))
                        
                        Button {
                            
                        } label: {
                            Text("Terms & Services")
                                .underline(true)
                                .font(.system(size: 13))
                                .fontWeight(.medium)
                                .foregroundColor(Color(hex: 0x200A4D))
                                
                        }
                        .frame(maxWidth: .infinity,alignment: .leading)
                    }
                    .padding(.top, 17)
                    
                    Button {
                        
                    } label: {
                        Text("SIGN UP")
                            .font(.system(size: 17))
                            .fontWeight(.bold)
                            .padding(.vertical, 24)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color.white)
                            .background(Constants.AppColor.primaryColor)
                            .cornerRadius(10)
                    }
                    .padding(.top,14)
                    .frame(maxWidth: .infinity,alignment: .trailing)
                    
                    Text("Or Sign Up With")
                        .font(.system(size: 13))
                        .fontWeight(.medium)
                        .foregroundColor(Color(hex: 0x200A4D,alpha:0.6))
                        .padding(.top, 22)
                    
                    HStack(spacing: 24){
                        Button {
                            
                        } label: {
                            SocialButtonLabel(image:"google")
                        }
                        
                        Button {

                        } label: {
                            SocialButtonLabel(image:"facebook")
                        }

                        Button {

                        } label: {
                            SocialButtonLabel(image:"apple")
                        }

                    }
                    .padding(.top, 18)
                    
                    HStack{
                        Text("Existing User?")
                            .font(.system(size: 16))
                            .fontWeight(.medium)
                            .foregroundColor(Color(hex: 0x200A4D, alpha: 0.6))
                        Button{
                            
                        } label: {
                            Text("Sign In")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color(hex: 0xE75D2E))
                        }
                    }
                    .padding(.top, 18)
//                    .padding(.bottom, 29)
                    
                }
                .padding(.horizontal, 36)
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity )
            .background(
                Color.white
                    .clipShape(CustomCorners(corners: [.topLeft,.topRight], radius: 30))
                    .ignoresSafeArea()
            )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: 0xF57A50))
    }
}

struct SignUpPage_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage()
    }
}


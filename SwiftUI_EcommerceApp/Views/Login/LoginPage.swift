//
//  LoginPage.swift
//  SwiftUI_ECommerceApp
//
//  Created by Thành Nguyễn on 15/09/2022.
//

import SwiftUI



struct LoginPage: View {
    
    @StateObject var loginData: LoginPageModel = LoginPageModel()
    
   
    
    var body: some View {
        NavigationView{
            VStack(spacing: 0){
                Image("login")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( height: getRect().height*0.23)
                    .padding(.horizontal, 60)
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 0){
                        Text("Log In")
                            .font(.system(size: 32))
                            .fontWeight(.bold)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.top, 30)
                            .foregroundColor(Color(hex: 0x200A4D))
                        
                        CustomTextField( icon: "verified_icon", title: "Email", hint: "Enter Your Email", value: $loginData.email, showPassword: $loginData.showPassword )
                            .padding(.top, 32)
                        
                        CustomTextField( icon:"eye", title: "Password", hint: "Enter password", value: $loginData.password, showPassword: $loginData.showPassword )
                            .padding(.top, 32)
                        
                        Button {
                            
                        } label: {
                            Text("Need help?")
                                .font(.system(size: 13))
                                .fontWeight(.medium)
                                .foregroundColor(Color(hex: 0x200A4D, alpha: 0.6))
                        }
                        .padding(.top,20)
                        .frame(maxWidth: .infinity,alignment: .trailing)
                        
                        Button {
                            
                        } label: {
                            Text("LOGIN")
                                .font(.system(size: 17))
                                .fontWeight(.bold)
                                .padding(.vertical, 24)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(Color.white)
                                .background(Constants.AppColor.primaryColor)
                                .cornerRadius(10)
                        }
                        .padding(.top,20)
                        .frame(maxWidth: .infinity,alignment: .trailing)
                        
                        Text("Or Login With")
                            .font(.system(size: 13))
                            .fontWeight(.medium)
                            .foregroundColor(Color(hex: 0x200A4D,alpha:0.6))
                            .padding(.top, 32)
                        
                        HStack(spacing: 24){
                            Button {
                                //code
                            } label: {
                                SocialButtonLabel(image: "google")
                            }
                           
                            Button {
                                //code
                            } label: {
                                SocialButtonLabel(image: "facebook")
                            }
                            
                            Button {
                                // code
                            } label: {
                                SocialButtonLabel(image: "apple")
                            }
                            
                        }
                        .padding(.top, 18)
                        
                        HStack{
                            Text("Newbie?")
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                                .foregroundColor(Color(hex: 0x200A4D, alpha: 0.6))
                            
                            
                            NavigationLink(destination: SignUpPage()){
                                Text("Create Account")
                                    .font(.system(size: 16))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(hex: 0xE75D2E))
                            }
                        }
                        .padding(.top, 18)
                        .padding(.bottom, 36)
                        
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
        .background(Constants.AppColor.primaryColor)
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}




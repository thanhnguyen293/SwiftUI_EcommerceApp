//
//  CustomTextField.swift
//  SwiftUI_ECommerceApp
//
//  Created by Thành Nguyễn on 15/09/2022.
//

import SwiftUI

struct CustomTextField: View {
    let icon: String
    let title: String
    let hint: String
    let value: Binding<String>
    let showPassword: Binding<Bool>
    
    var body: some View {
        VStack(alignment: .leading,spacing: 0){
            Text(title)
                .font(.system(size: 14))
                .fontWeight(.regular)
                .foregroundColor(Color(hex: 0x200A4D))
                .padding(0)
                .foregroundColor(Color.black.opacity(0.8))
            
            HStack{
                if title.contains("Password"){
                    SecureField(hint,text: value)
                        .padding(.top,2)
                        .foregroundColor(Color(hex: 0x200A4D))
                }
                else {
                    TextField(hint,text: value)
                        .padding(.top,2)
                        .foregroundColor(Color(hex: 0x200A4D))
                    
                }
                
                Image(icon)
            }.padding(.top, 12)
            
            Divider()
                .background(Color(hex: 0x3C3C43,alpha: 0.36))
                .padding(.top,10.5)
        }
       
    }
}
//
//struct CustomTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTextField()
//    }
//}

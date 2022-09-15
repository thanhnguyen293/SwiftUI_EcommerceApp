//
//  SocialButtonLabel.swift
//  SwiftUI_ECommerceApp
//
//  Created by Thành Nguyễn on 15/09/2022.
//

import SwiftUI

struct SocialButtonLabel: View {
    var image: String
    var body: some View {
//        Image(image)
//            .frame(height: 18)
//            .padding(23)
//            .overlay {
//                Circle()
//                    .stroke(Color.gray, lineWidth: 1)
//            }
        ZStack {
            Image(image)
                .frame(height: 18)
               
            
            Circle()
                .strokeBorder(.gray, lineWidth: 1)
        }.frame(width: 64, height: 64)
    }
}

struct SocialButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        SocialButtonLabel(image: "google")
    }
}

//
//  OnBoardingPage.swift
//  SwiftUI_ECommerceApp
//
//  Created by Thành Nguyễn on 15/09/2022.
//

import SwiftUI

struct OnBoardingPage: View {
    let screenSize: CGRect = UIScreen.main.bounds

    var body: some View {
        VStack(alignment: .center){
            Image("nike_logo")
                .resizable()
                .scaledToFit()
                .frame(width: screenSize.width*0.5)
                .aspectRatio(contentMode: .fit)
            ZStack{
                Text("NIKE")
                    .font(.system(size: screenSize.width*0.4))
                    .fontWeight(.heavy)
                    .opacity(0.6)
                    .foregroundColor(.white)
                
                Image("jordan1_travis_scott")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: screenSize.width*0.9)
                    .rotationEffect(.degrees(15))
                    .offset(y: screenSize.height*0.12)


            }
            .frame(width: .infinity, height: screenSize.height*0.4)
            
            Text("THE BEST")
                .font(.system(size: screenSize.width*0.152))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(.top, 60)
 
            Button{
                
            } label: {
                Text("Get started")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .padding(.vertical,18)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                    .foregroundColor(Color.purple)
            }
            .padding(.horizontal, 30)
            .padding(.bottom,60)
            .offset(y: getRect().height < 750 ? 20 : 40)
            
//            Spacer()
        }
        .padding()
        .padding(.top, getRect().height < 750 ? 20 : 40)
        .frame( maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color.teal
        )
        
        
        
    }
}

struct OnBoardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingPage()
    }
}

extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}

//
//  CreditsView.swift
//  CardPlay
//
//  Created by Matheus Westphalen on 6/4/20.
//  Copyright © 2020 Matheus Westphalen. All rights reserved.
//

import SwiftUI

struct CreditsView: View {
    
        @EnvironmentObject var viewRouter:ViewRouter
    
    var body: some View {
        ZStack {
            
            Image("Suits Background")
               .edgesIgnoringSafeArea(.all)
            .scaledToFit()
            
            VStack {

                Button(action: {self.viewRouter.currentPage = "mainPage"}) {
                    Image("BackToMenuButton").renderingMode(.original).padding(.trailing, 700)
                }
                HStack {
                Image("Credits")
                
            }
        }
//        .background(Image("Suits Background")
//        .resizable()
//        .scaledToFill())
//        .edgesIgnoringSafeArea(.all)
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView().environmentObject(ViewRouter())
        .previewLayout(.fixed(width: 812, height: 375))
    }
}

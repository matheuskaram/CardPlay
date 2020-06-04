//
//  ThemesView.swift
//  CardPlay
//
//  Created by Matheus Westphalen on 6/3/20.
//  Copyright © 2020 Matheus Westphalen. All rights reserved.
//

import SwiftUI

struct ThemesView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        ZStack {
            
            Image("Suits Background")
                .edgesIgnoringSafeArea(.all)
                .scaledToFit()
            
            VStack {
                
                Button(action: {self.viewRouter.currentPage = "mainPage"}) {
                                      Image("BackToMenuButton").renderingMode(.original).padding(.trailing, 700)
                      }
                
                Image("ThemePrompt").padding(.bottom, 30)
            }
            
            HStack {
                Button(action: {
                    
                }) {
                    Image("BrightTheme").renderingMode(.original).padding(.top, 70).padding(.trailing, 20)
                }
                
                Button(action: {
                    
                }) {
                    Image("StarTheme").renderingMode(.original).padding(.top, 70).padding(.trailing, 20)
                }
                
                Button(action: {
                    
                }) {
                    Image("NightTheme").renderingMode(.original).padding(.top, 70)
                }
            }
        }
    }
}

struct ThemesView_Previews: PreviewProvider {
    static var previews: some View {
        ThemesView().environmentObject(ViewRouter())
        .previewLayout(.fixed(width: 812, height: 375))
    }
}

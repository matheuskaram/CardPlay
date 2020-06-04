//
//  SettingsView.swift
//  CardPlay
//
//  Created by Matheus Westphalen on 6/3/20.
//  Copyright © 2020 Matheus Westphalen. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        ZStack {
        
            Image("Suits Background")
            .edgesIgnoringSafeArea(.all)
                .scaledToFit()
        
            VStack {
            
                Spacer()
                Image("CardPlay Logo").padding(.top, 100)
                Spacer()
                
                HStack {
                    
                    Button(action: {self.viewRouter.currentPage = "singlePlayerPage"}) {
                        Image("Singleplayer Deck").renderingMode(.original).padding(.top, 120)
                    }
                    
                    Button(action: {self.viewRouter.currentPage = "multiPlayerPage"}) {
                        Image("Multiplayer Deck").renderingMode(.original).padding(.top, 120)
                    }
                    
                    Button(action: {self.viewRouter.currentPage = "themesPage"}) {
                        Image("Themes Deck").renderingMode(.original).padding(.top, 120)
                    }
                    
                    Button(action: {self.viewRouter.currentPage = "mainPage"}) {
                        Image("SettingsPopUp").renderingMode(.original).padding(.top, 120)
                    }
                                           
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().environmentObject(ViewRouter())
        .previewLayout(.fixed(width: 812, height: 375))
    }
}

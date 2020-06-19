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
            VStack {
            
                Button(action: { self.viewRouter.currentPage = "creditsPage"}) {
                    Image("helpIcon").renderingMode(.original).padding(.leading, 700).padding(.top, 60)
                }
                
                Image("CardPlay Logo")
                
                Spacer()
                HStack (alignment: .bottom, spacing: 20) {
                    
                    Spacer()
                    
                    Button(action: {self.viewRouter.currentPage = "singlePlayerPage"}) {
                        Image("Singleplayer Deck").renderingMode(.original)
                    }
                    
                    Button(action: {self.viewRouter.currentPage = "multiPlayerPage"}) {
                        Image("Multiplayer Deck").renderingMode(.original)
                    }
                    
                    Button(action: {self.viewRouter.currentPage = "themesPage"}) {
                        Image("Themes Deck").renderingMode(.original)
                    }
                    
                    Button(action: {self.viewRouter.currentPage = "mainPage"}) {
                        Image("SettingsPopUp").renderingMode(.original)
                    }
                       
                    Spacer()
                }.offset(y: -21)
            }
            .background(Image("Suits Background")
            .resizable()
            .scaledToFill())
            .edgesIgnoringSafeArea(.all)
        }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().environmentObject(ViewRouter())
        .previewLayout(.fixed(width: 812, height: 375))
    }
}

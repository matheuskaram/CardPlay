//
//  MotherView.swift
//  CardPlay
//
//  Created by Matheus Westphalen on 6/3/20.
//  Copyright © 2020 Matheus Westphalen. All rights reserved.
//

import SwiftUI

struct MotherView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            if viewRouter.currentPage == "mainPage" {
                ContentView()
            } else if viewRouter.currentPage == "singlePlayerPage" {
                SinglePlayerView()
            } else if viewRouter.currentPage == "multiPlayerPage" {
                MultiplayerView()
            } else if viewRouter.currentPage == "settingsPage" {
                SettingsView()
            } else if viewRouter.currentPage == "themesPage" {
                ThemesView()
            } else if viewRouter.currentPage == "creditsPage" {
                CreditsView()
            } else if viewRouter.currentPage == "solitaireMenu" {
                SolitaireMenu()
            } else if viewRouter.currentPage == "blackjackMenu" {
                BlackjackMenu()
            } else if viewRouter.currentPage == "pokerMenu" {
                PokerMenu()
            } else if viewRouter.currentPage == "spadesMenu" {
                SpadesMenu()
            } else if viewRouter.currentPage == "solitaireView" {
                SolitaireView()
            } else if viewRouter.currentPage == "blackjackView" {
                BlackjackView()
            }
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}

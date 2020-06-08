//
//  SinglePlayerView.swift
//  CardPlay
//
//  Created by Matheus Westphalen on 6/1/20.
//  Copyright © 2020 Matheus Westphalen. All rights reserved.
//

import SwiftUI


struct SinglePlayerView: View {
    
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
                        
                    HStack (alignment: .center, spacing: 50) {
                        
                           Button(action: {
                               
                           }, label: {
                            Image("Play Solitaire").renderingMode(.original)
                           })
                           
                           Button(action: {
                               
                           }, label: {
                               Image("Play Blackjack").renderingMode(.original)
                           })
                   
                       }
                   }
            
            
            }
    }
}

struct SinglePlayerView_Previews: PreviewProvider {
    static var previews: some View {
        SinglePlayerView().environmentObject(ViewRouter())
        .previewLayout(.fixed(width: 812, height: 375))
    }
}

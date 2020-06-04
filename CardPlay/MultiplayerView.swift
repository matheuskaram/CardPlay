//
//  MultiplayerView.swift
//  CardPlay
//
//  Created by Matheus Westphalen on 6/1/20.
//  Copyright © 2020 Matheus Westphalen. All rights reserved.
//

import SwiftUI

struct MultiplayerView: View {
     
    @EnvironmentObject var viewRouter: ViewRouter
    
     var body: some View {
         
         ZStack {
             
             Image("Suits Background")
                 .edgesIgnoringSafeArea(.all)
                .scaledToFit()
             
             VStack {
                
                 Button(action: {self.viewRouter.currentPage = "mainPage"}) {
                    Image("BackToMenuButton").renderingMode(.original).padding(.trailing, 700).padding(.bottom, 10)
                  }
                
    
                 HStack {

                     
                     Button(action: {
                         
                     }, label: {
                        Image("Play Poker").renderingMode(.original).padding(.bottom, 30)
                     })
                     
                     Button(action: {
                         
                     }, label: {
                         Image("Play Spades").renderingMode(.original).padding(.bottom, 30)
                     })
             
                 }
             }
         }
         
     }
}

struct MultiplayerView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplayerView().environmentObject(ViewRouter())
        .previewLayout(.fixed(width: 812, height: 375))
    }
}

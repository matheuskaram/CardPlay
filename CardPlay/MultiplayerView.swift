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
         
//         ZStack {
//
//             Image("Suits Background")
//                 .edgesIgnoringSafeArea(.all)
//                .scaledToFit()
             
             VStack {
                
                 Button(action: {self.viewRouter.currentPage = "mainPage"}) {
                    Image("BackToMenuButton").renderingMode(.original).padding(.trailing, 700)//.padding(.bottom, 10)
                  }
                
    
                 HStack (alignment: .center, spacing: 50) {

                     
                     Button(action: {
                         
                     }, label: {
                        Image("Play Poker").renderingMode(.original)
                     })
                     
                     Button(action: {
                        
                     }, label: {
                         Image("Play Spades").renderingMode(.original)
                     })
             
                 }
             }.background(Image("Suits Background")
             .resizable()
             .scaledToFill())
             .edgesIgnoringSafeArea(.all)
         //}
         
     }
}

struct MultiplayerView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplayerView().environmentObject(ViewRouter())
        .previewLayout(.fixed(width: 812, height: 375))
    }
}

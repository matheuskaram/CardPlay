//
//  SinglePlayerView.swift
//  CardPlay
//
//  Created by Matheus Westphalen on 6/1/20.
//  Copyright © 2020 Matheus Westphalen. All rights reserved.
//

import SwiftUI

struct SinglePlayerView: View {
    
        @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
         ZStack {
                   
                   Image("Suits Background")
                       .resizable()
                       .edgesIgnoringSafeArea(.all)
                   
                   VStack {
                       
                       Spacer()
                       Image("CardPlay Logo")
                       Spacer()
          
                       HStack {

                           
                           
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
        SinglePlayerView(viewRouter: ViewRouter())
        .previewLayout(.fixed(width: 812, height: 375))
    }
}

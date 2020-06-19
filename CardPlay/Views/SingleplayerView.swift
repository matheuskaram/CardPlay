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
            
            VStack (alignment: .center){
                
                HStack {
                    Button(action: {self.viewRouter.currentPage = "mainPage"}) {
                        Image("BackToMenuButton").renderingMode(.original).frame(width: 50, height: 30)
                    }
                    
                    Spacer()
                }.offset(x: 20, y: 20)
                
                Spacer()
                
                HStack (alignment: .center, spacing: 50) {
                    
                    Button(action: {self.viewRouter.currentPage = "solitaireMenu"}) {
                        Image("Play Solitaire").renderingMode(.original)
                    }
                    
                    Button(action: {self.viewRouter.currentPage = "blackjackMenu"}) {
                        Image("Play Blackjack").renderingMode(.original)
                    }
                    
                }
                Spacer()
            }
        }
    }
}

struct SolitaireMenu:View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        
        ZStack {
            
            Image("Suits Background")
             .edgesIgnoringSafeArea(.all)
             .scaledToFit()
            
            VStack (alignment: .center) {
                     
                HStack {
                    
                    Button(action: {self.viewRouter.currentPage = "singlePlayerPage"}) {
                        Image("BackButton").renderingMode(.original).frame(width: 50, height: 30)
                    }
                    
                    Spacer()
                }.offset(x: 20,y: 20)
                
                
                Image("startSolitaireButton").renderingMode(.original).padding()
                
                
                Button(action: {
                    // add action
                }, label: {
                    Image("easyButtonBlack").renderingMode(.original)
                })
                
                Button(action: {
                    // add action
                }, label: {
                    Image("mediumButtonBlack").renderingMode(.original)
                })
                
                Button(action: {
                    // add action
                }, label: {
                    Image("hardButtonBlack").renderingMode(.original)
                })
                
                Button(action: {
                    // add action
                }, label: {
                    Image("drawOptionButton").renderingMode(.original)
                })
                
                Spacer()
            }
        }
    }
}

struct BlackjackMenu:View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        
        ZStack {
            
            Image("Suits Background")
             .edgesIgnoringSafeArea(.all)
             .scaledToFit()
            
            VStack (alignment: .center) {
                     
                HStack {
                    
                    Button(action: {self.viewRouter.currentPage = "singlePlayerPage"}) {
                        Image("BackButton").renderingMode(.original).frame(width: 50, height: 30)
                    }
                    
                    Spacer()
                }.offset(x: 20,y: 20)
                
                
                Image("startBlackjackButton").renderingMode(.original).padding()
                
                Button(action: {
                    // add action
                }, label: {
                    Image("easyButtonRed").renderingMode(.original)
                })
                
                Button(action: {
                    // add action
                }, label: {
                    Image("mediumButtonRed").renderingMode(.original)
                })
                
                Button(action: {
                    // add action
                }, label: {
                    Image("hardButtonRed").renderingMode(.original)
                })
                                
                Spacer()
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

struct SolitaireMenu_Previews: PreviewProvider {
    static var previews: some View {
        SolitaireMenu().environmentObject(ViewRouter())
        .previewLayout(.fixed(width: 812, height: 375))
    }
}

struct BlackjackMenu_Previews: PreviewProvider {
    static var previews: some View {
        BlackjackMenu().environmentObject(ViewRouter())
        .previewLayout(.fixed(width: 812, height: 375))
    }
}

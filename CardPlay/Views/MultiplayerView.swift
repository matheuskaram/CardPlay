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
            
            VStack (alignment: .center){
                
                HStack {
                    Button(action: {self.viewRouter.currentPage = "mainPage"}) {
                        Image("BackToMenuButton").renderingMode(.original).frame(width: 50, height: 30)
                    }
                    
                    Spacer()
                }.offset(x: 20, y: 20)
                
                Spacer()
                
                HStack (alignment: .center, spacing: 50) {
                    
                    Button(action: {self.viewRouter.currentPage = "pokerMenu"}) {
                        Image("Play Poker").renderingMode(.original)
                    }
                    
                    Button(action: {self.viewRouter.currentPage = "spadesMenu"}) {
                        Image("Play Spades").renderingMode(.original)
                    }
                }
                
                Spacer()
            }
        }
        
    }
}

struct PokerMenu:View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        
        ZStack {
            
            Image("Suits Background")
             .edgesIgnoringSafeArea(.all)
             .scaledToFit()
            
            VStack (alignment: .center) {
                     
                HStack {
                    
                    Button(action: {self.viewRouter.currentPage = "multiPlayerPage"}) {
                        Image("BackButton").renderingMode(.original).frame(width: 50, height: 30)
                    }
                    
                    Spacer()
                }.offset(x: 20,y: 20)
                
                Button(action: {
                    
                }) {
                    Image("startPokerButton").renderingMode(.original).padding()
                }

                Button(action: {
                    // add action
                }, label: {
                    Image("findMatchButton").renderingMode(.original)
                })
                
                Button(action: {
                    // add action
                }, label: {
                    Image("playFriendsButton").renderingMode(.original)
                })
                
                Spacer()
            }
        }
    }
}

struct SpadesMenu:View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        
        ZStack {
            
            Image("Suits Background")
             .edgesIgnoringSafeArea(.all)
             .scaledToFit()
            
            VStack (alignment: .center) {
                     
                HStack {
                    
                    Button(action: {self.viewRouter.currentPage = "multiPlayerPage"}) {
                        Image("BackButton").renderingMode(.original).frame(width: 50, height: 30)
                    }
                    
                    Spacer()
                }.offset(x: 20,y: 20)
                
                Button(action: {
                    
                }) {
                    Image("startSpadesButton").renderingMode(.original).padding()
                }
                
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


struct MultiplayerView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplayerView().environmentObject(ViewRouter())
        .previewLayout(.fixed(width: 812, height: 375))
    }
}

struct PokerMenu_Previews: PreviewProvider {
    static var previews: some View {
        PokerMenu().environmentObject(ViewRouter())
        .previewLayout(.fixed(width: 812, height: 375))
    }
}

struct SpadesMenu_Previews: PreviewProvider {
    static var previews: some View {
        SpadesMenu().environmentObject(ViewRouter())
        .previewLayout(.fixed(width: 812, height: 375))
    }
}

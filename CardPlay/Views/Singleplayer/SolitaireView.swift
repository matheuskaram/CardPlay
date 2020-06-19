//
//  Solitaire.swift
//  CardPlay
//
//  Created by Matheus Westphalen on 6/17/20.
//  Copyright © 2020 Matheus Westphalen. All rights reserved.
//

import SwiftUI

struct SolitaireView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SolitaireView_Previews: PreviewProvider {
    static var previews: some View {
        SolitaireView().environmentObject(ViewRouter())
        .previewLayout(.fixed(width: 812, height: 375))
    }
}

//
//  ViewRouter.swift
//  CardPlay
//
//  Created by Matheus Westphalen on 6/1/20.
//  Copyright © 2020 Matheus Westphalen. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter : ObservableObject {
    
    let objectWillChange = PassthroughSubject<ViewRouter, Never>()
    
    var currentPage: String = "page1"{
    didSet {
        objectWillChange.send(self)
        }
    }
    
    
}

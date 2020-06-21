//
//  ViewRouter.swift
//  Inspiration
//
//  Created by rebecca on 6/20/20.
//  Copyright © 2020 Rebecca Zhu. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ViewRouter: ObservableObject {
    
    let objectWillChange = PassthroughSubject<ViewRouter,Never>()
    //FOR sending data between views!
    
    //Starting page
    var currentPage: String = "Splash" {
        didSet {
            objectWillChange.send(self)
        }
    }
    
    var message: String = "" {
        didSet{
            objectWillChange.send(self)
        }
    }
    
    var details: String = "" {
        didSet{
            objectWillChange.send(self)
        }
    }
    
    var name: String = ""{
        didSet{
            objectWillChange.send(self)
        }
    }
    
    var img_name: String = "" {
        didSet{
            objectWillChange.send(self)
        }
    }
    
    var accomplishments: String = "" {
        didSet{
            objectWillChange.send(self)
        }
    }
    
    var wht_to_do: String = "" {
        didSet{
            objectWillChange.send(self)
        }
    }
    
}

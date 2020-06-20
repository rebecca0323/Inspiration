//
//  ContentView.swift
//  Inspiration
//
//  Created by rebecca on 6/20/20.
//  Copyright © 2020 Rebecca Zhu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewRouter: ViewRouter
    @ObservedObject var session: SessionStore
    
    var body: some View {
        ZStack{
            if viewRouter.currentPage == "Splash" {
                Splash(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "Register" {
                Register(session: session, viewRouter: viewRouter)
            } else if viewRouter.currentPage == "Home"{
                Home(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "Detected"{
                Detected(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "Female"{
                Female(viewRouter: viewRouter)
            } else if viewRouter.currentPage == "Saved Profile"{
                SavedProfile(viewRouter: viewRouter)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
              ContentView(viewRouter: ViewRouter(), session: SessionStore())
          }
}

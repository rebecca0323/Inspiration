//
//  Splash.swift
//  Inspiration
//
//  Created by rebecca on 6/20/20.
//  Copyright © 2020 Rebecca Zhu. All rights reserved.
//

import SwiftUI

struct Splash: View {
    var body: some View {
        ZStack(alignment: .top){
            Color(red: 1.0, green: 226/255, blue: 226/255).edgesIgnoringSafeArea(.all)
            Image("top").edgesIgnoringSafeArea(.top)
            VStack{
                Image("logo")
                Spacer()
                Button(action: {
                        
                    }) {
                            Text("Log in")
                                .font(Font.custom("AvenirNext-Bold", size: 20))
                                .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                                .padding(.horizontal, 20.0)
                                .frame(width: 210.0, height: 54.0)
                        
                    }
                .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                    .cornerRadius(/*@START_MENU_TOKEN@*/27.0/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 4.0)
                Spacer()
                Button(action: {
                        
                    }) {
                            Text("Register")
                                .font(Font.custom("AvenirNext-Bold", size: 20))
                                .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                                .padding(.horizontal, 20.0)
                                .frame(width: 210.0, height: 54.0)
                        
                    }
                .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                    .cornerRadius(/*@START_MENU_TOKEN@*/27.0/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 4.0)
                Spacer()
                Spacer()
                Image("bottom").edgesIgnoringSafeArea(.bottom)
            }.edgesIgnoringSafeArea(.all)
                .padding(.top, 140.0)
        }
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}

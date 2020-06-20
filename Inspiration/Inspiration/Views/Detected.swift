//
//  Detected.swift
//  Inspiration
//
//  Created by rebecca on 6/20/20.
//  Copyright © 2020 Rebecca Zhu. All rights reserved.
//

import SwiftUI

struct Detected: View {
    var body: some View {
        ZStack(alignment: .top){
            Color(red: 1.0, green: 226/255, blue: 226/255).edgesIgnoringSafeArea(.all)
            VStack{
                Image("top").edgesIgnoringSafeArea(.top)
                Spacer()
                Image("bottom").edgesIgnoringSafeArea(.bottom)
            }.edgesIgnoringSafeArea(.all)
            
            RoundedRectangle(cornerRadius: 46.0).padding(50).padding(.top, 70).padding(.bottom, 70)
                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
            .overlay(
                VStack{
                    Text("We detected a...").font(Font.custom("AvenirNext-Bold", size: 30))
                    .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                    
                    Text("Calculator").font(Font.custom("Bodoni", size: 50))
                    .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                    
                    Text("Some possible STEM careers involving a calculator are: ").font(Font.custom("AvenirNext-Regular", size: 20))
                    .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                    .padding()
                        .frame(width: 280)
                    
                    Text("""
                        1. Mathematician
                        2. Statistician
                        3. Data analyst
                        4. Financial Manager
                        """).font(Font.custom("AvenirNext-Regular", size: 20))
                    .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .frame(width: 300)
                    
                    Button(action: {
                            
                        }) {
                                Text("View Female")
                                    .font(Font.custom("AvenirNext-Bold", size: 20))
                                    .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                                    .padding(.horizontal, 20.0)
                                    .frame(width: 210.0, height: 54.0)
                            
                        }
                    .background(Color(red: 1.0, green: 155/255, blue: 155/255))
                        .cornerRadius(/*@START_MENU_TOKEN@*/27.0/*@END_MENU_TOKEN@*/)
                        .shadow(radius: 4.0)
                }
            )
        }
    }
}
struct Detected_Previews: PreviewProvider {
    static var previews: some View {
        Detected()
    }
}

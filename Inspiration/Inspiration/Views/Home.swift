//
//  Home.swift
//  Inspiration
//
//  Created by rebecca on 6/20/20.
//  Copyright © 2020 Rebecca Zhu. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack(alignment: .top){
            Color(red: 1.0, green: 226/255, blue: 226/255).edgesIgnoringSafeArea(.all)
            Image("top").edgesIgnoringSafeArea(.top)
            VStack{
                RoundedRectangle(cornerRadius: 15).foregroundColor(Color(red: 1.0, green: 155/255, blue: 155/255))
                    .frame(width: 350, height: 450)
                    .padding(.top, 70)
                    .padding(.bottom, 7)
                    .overlay(
                        VStack{
                            Text("Female Inspiration of the Day").font(Font.custom("AvenirNext-Bold", size: 25))
                            .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                            .padding(.top, 70)
                                .padding()
                            
                            Text("Marie Curie").font(Font.custom("AvenirNext-Bold", size: 40))
                            .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                            
                            HStack(alignment: .bottom){
                                Spacer()
                                Image("marie")
                            }
                        }.edgesIgnoringSafeArea(.all)
                )
                
                
                RoundedRectangle(cornerRadius: 15).foregroundColor(Color(red: 133/255, green:51/255, blue: 153/255))
                .frame(width: 350, height: 100)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                    .overlay(
                        HStack{
                            Image("bookmark")
                            Spacer()
                            Button(action: {
                                
                            }) {
                                    Text("View Saved Profiles").font(Font.custom("AvenirNext-Bold", size: 15))
                                    .foregroundColor(Color(red: 1.0, green: 226/255, blue: 226/255))
                                
                            }
                        }.padding(.leading, 50)
                        .padding(.trailing, 100)
                )
                
                RoundedRectangle(cornerRadius: 15).foregroundColor(Color(red: 150/255, green: 119/225, blue: 164/255))
                .frame(width: 350, height: 100)
                .padding(.top, 10)
                    .padding(.bottom, 10)
                    .overlay(
                        HStack{
                            Image("camera")
                            Spacer()
                            Button(action: {
                                
                            }) {
                                    Text("Use Camera").font(Font.custom("AvenirNext-Bold", size: 15))
                                    .foregroundColor(Color(red: 1.0, green: 226/255, blue: 226/255))
                                
                            }
                        }.padding(.leading, 40)
                        .padding(.trailing, 155)
                )
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

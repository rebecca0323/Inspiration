//
//  SavedProfile.swift
//  Inspiration
//
//  Created by rebecca on 6/20/20.
//  Copyright © 2020 Rebecca Zhu. All rights reserved.
//

import SwiftUI

struct SavedProfile: View {
    var body: some View {
        ZStack{
            Color(red: 1.0, green: 226/255, blue: 226/255).edgesIgnoringSafeArea(.all)
            VStack{
                Rectangle()
                    .frame(height: 350)
                .foregroundColor(Color(red: 150/255, green:119/255, blue: 164/255))
                .overlay(
                    VStack{
                        Text("Saved Profiles").padding()
                            .padding(.top, 50)
                            .padding(.trailing, 50)
                        .font(Font.custom("Bodoni Bold", size: 50))
                        .foregroundColor(Color(red: 1.0, green: 226/255, blue: 226/255))
                        Spacer()
                        HStack{
                            Spacer()
                            Image("woman").padding(.trailing, 20)
                        }
                    }
                )
                
                RoundedRectangle(cornerRadius: 18).foregroundColor(Color(red: 1.0, green:155/255, blue: 155/255))
                .frame(width: 290, height: 100)
                .padding(30)
                    .overlay(
                        VStack{
                            Button(action: {
                                
                            }) {
                                    Text("Mary Jackson").font(Font.custom("Bodoni Bold", size: 30))
                                    .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                                
                            }
                            Text("mathematician").font(Font.custom("AvenirNext-Regular", size: 20))
                            .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                        }
                )
                
                RoundedRectangle(cornerRadius: 18).foregroundColor(Color(red: 1.0, green:155/255, blue: 155/255))
                .frame(width: 290, height: 100)
                .padding(30)
                    .overlay(
                        VStack{
                            Button(action: {
                                
                            }) {
                                    Text("Grace Hopper").font(Font.custom("Bodoni Bold", size: 30))
                                    .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                                
                            }
                            Text("computer scientist").font(Font.custom("AvenirNext-Regular", size: 20))
                            .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                        }
                )
                
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct SavedProfile_Previews: PreviewProvider {
    static var previews: some View {
        SavedProfile()
    }
}

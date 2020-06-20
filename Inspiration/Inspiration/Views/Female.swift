//
//  Female.swift
//  Inspiration
//
//  Created by rebecca on 6/20/20.
//  Copyright © 2020 Rebecca Zhu. All rights reserved.
//

import SwiftUI

struct Female: View {
    var body: some View {
            ZStack(alignment: .top){
                Color(red: 1.0, green: 226/255, blue: 226/255).edgesIgnoringSafeArea(.all)
                Image("top").edgesIgnoringSafeArea(.top)
                VStack{
                    RoundedRectangle(cornerRadius: 15).foregroundColor(Color(red: 1.0, green: 155/255, blue: 155/255))
                        .frame(width: 350, height: 350)
                        .padding(.bottom, 7)
                        .overlay(
                            VStack{
                                Text("Mary Jackson").font(Font.custom("Bodoni", size: 50))
                                    .foregroundColor(Color(red: 83/255, green: 0/255, blue: 103/255))
                                    .multilineTextAlignment(.leading)
                                
                                Image("cs")
                            }.edgesIgnoringSafeArea(.all)
                    )
                    
                    ScrollView(.horizontal){
                        HStack{
                            RoundedRectangle(cornerRadius: 15).foregroundColor(Color(red: 133/255, green:51/255, blue: 153/255))
                            .frame(width: 250, height: 300)
                            .padding(30)
                                .overlay(
                                    VStack{
                                        Text("Accomplishments").font(Font.custom("Bodoni", size: 30))
                                        .foregroundColor(Color(red: 1.0, green: 226/255, blue: 226/255))
                                    }
                            )
                            
                            //Wht to do
                            RoundedRectangle(cornerRadius: 15).foregroundColor(Color(red: 133/255, green:51/255, blue: 153/255))
                            .frame(width: 250, height: 300)
                            .padding(30)
                                .overlay(
                                    VStack{
                                        Text("What you can do:").font(Font.custom("Bodoni", size: 30))
                                        .foregroundColor(Color(red: 1.0, green: 226/255, blue: 226/255))
                                    }
                            )
                            
                        }
                    }
                    
                    HStack{
                        Button(action: {
                            
                        }) {
                                Text("SAVE").font(Font.custom("Bodoni", size: 20))
                                .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                            
                        }
                        Spacer()
                    }.padding(.leading, 30)
                    
                }.padding(.top, 50)
            }
        }
    }


struct Female_Previews: PreviewProvider {
    static var previews: some View {
        Female()
    }
}

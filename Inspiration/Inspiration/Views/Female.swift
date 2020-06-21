//
//  Female.swift
//  Inspiration
//
//  Created by rebecca on 6/20/20.
//  Copyright © 2020 Rebecca Zhu. All rights reserved.
//

import SwiftUI

struct Female: View {
    @ObservedObject var viewRouter: ViewRouter
    var name: String
    var img_src: String
    var accomplishments: String
    var wht_to_do: String
    
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
                                Text("\(name)").font(Font.custom("Bodoni", size: 50))
                                    .foregroundColor(Color(red: 83/255, green: 0/255, blue: 103/255))
                                    .multilineTextAlignment(.leading)
                                
                                Image("\(img_src)")
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
                                        Text("\(accomplishments)").font(Font.custom("AvenirNext-Regular", size: 15)).multilineTextAlignment(.leading).padding(.leading, 50)
                                            .padding(.trailing, 50).padding(.top, 10)
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
                                        Text("""
                                        \(wht_to_do)
                                        """).font(Font.custom("AvenirNext-Regular", size: 15)).multilineTextAlignment(.leading).padding(.leading, 50)
                                            .padding(.trailing, 50).padding(.top, 10)
                                        .foregroundColor(Color(red: 1.0, green: 226/255, blue: 226/255))
                                    }
                            )
                            
                        }
                    }
                    
                    HStack{
                        Button(action: {
                            self.viewRouter.currentPage = "Home"
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
        Female(viewRouter: ViewRouter(), name: "", img_src: "", accomplishments: "", wht_to_do: "")
    }
}

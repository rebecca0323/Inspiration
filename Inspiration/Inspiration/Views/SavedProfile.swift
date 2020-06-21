//
//  SavedProfile.swift
//  Inspiration
//
//  Created by rebecca on 6/20/20.
//  Copyright © 2020 Rebecca Zhu. All rights reserved.
//

import SwiftUI

struct SavedProfile: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
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
                                self.viewRouter.name = "Mary Jackson"
                                self.viewRouter.img_name = "math"
                                self.viewRouter.accomplishments = "She was NASA's first African American female engineer and co-authored 12 technical papers at the agency. Jackson earned a double degree in mathematics and physical science. At NASA, she accepted a demotion to become manager in order to help other miniorities at NASA!"
                                self.viewRouter.wht_to_do = """
                                1. Try Cool Math Games
                                2. Try adding math to a game
                                3. Measure the height of a tree without a ladder
                                4. Hunt for shapes around you
                                """
                                self.viewRouter.currentPage = "Female"
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
                                self.viewRouter.name = "Grace Hopper"
                                self.viewRouter.img_name = "cs"
                                self.viewRouter.accomplishments = "She was an American computer scientist and US Navy rear admiral who developed a coding language called COBOL. She was also part of the team who made the UNIVAC 1 computer, the first computer meant for business applications. Hopper coined the term debugging!"
                                self.viewRouter.wht_to_do = """
                                1. Learn to use MIT Scratch
                                2. Try One Hour of Code
                                3. Create your own Google Logo
                                4. Try CodeAcademy
                                """
                                self.viewRouter.currentPage = "Female"
                            }) {
                                    Text("Grace Hopper").font(Font.custom("Bodoni Bold", size: 30))
                                    .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                                
                            }
                            Text("computer scientist").font(Font.custom("AvenirNext-Regular", size: 20))
                            .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                        }
                )
                
                RoundedRectangle(cornerRadius: 18).foregroundColor(Color(red: 1.0, green:155/255, blue: 155/255))
                .frame(width: 290, height: 100)
                .padding(30)
                    .overlay(
                        VStack{
                            Button(action: {
                                self.viewRouter.name = "Marie Curie"
                                self.viewRouter.img_name = "curie"
                                self.viewRouter.accomplishments = "Marie was a physicist, chemist, and pioneer in the study of radiation. She received the Nobel Prize in Physics and Chemistry, becoming the first woman to win Nobel Prizes. She also discovered the elements Polonium and Radium with her husband."
                                self.viewRouter.wht_to_do = """
                                1. Make some SLIME
                                2. Try the shiny penny experiment
                                3. Create a lemon volcano
                                4. Try making colorful cabbage
                                """
                                self.viewRouter.currentPage = "Female"
                            }) {
                                    Text("Marie Curie").font(Font.custom("Bodoni Bold", size: 30))
                                    .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                                
                            }
                            Text("physicist + chemist").font(Font.custom("AvenirNext-Regular", size: 20))
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
        SavedProfile(viewRouter: ViewRouter())
    }
}

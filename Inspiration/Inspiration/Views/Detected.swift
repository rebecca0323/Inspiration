//
//  Detected.swift
//  Inspiration
//
//  Created by rebecca on 6/20/20.
//  Copyright © 2020 Rebecca Zhu. All rights reserved.
//

import SwiftUI

struct Detected: View {
    @ObservedObject var viewRouter: ViewRouter
    var detected_obj: String
    var deets: String
    
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
                    
                    Text("\(detected_obj)").font(Font.custom("Bodoni", size: 50))
                    .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                    
                    Text("Some possible STEM careers involving a " + "\(detected_obj)" + " are: ").font(Font.custom("AvenirNext-Regular", size: 20))
                    .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                    .padding()
                        .frame(width: 280)
                    
                    Text("""
                        \(deets)
                        """).font(Font.custom("AvenirNext-Regular", size: 20))
                    .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .frame(width: 300)
                    
                    Button(action: {
                        if(self.detected_obj == "Laptop"){
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
                        }
                        else if(self.detected_obj == "Calculator"){
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
                        }
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
        Detected(viewRouter: ViewRouter(), detected_obj: "", deets: "")
    }
}

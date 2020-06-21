//
//  Home.swift
//  Inspiration
//
//  Created by rebecca on 6/20/20.
//  Copyright © 2020 Rebecca Zhu. All rights reserved.
//

import SwiftUI
import MLKit

struct Home: View {
    
    @State var showActionSheet = false
    @State var showImagePicker = false
    @ObservedObject var viewRouter: ViewRouter
    
    @State var sourceType:UIImagePickerController.SourceType = .camera
    
    @State var uploadimage:UIImage?
    
    var body: some View {
        ZStack(alignment: .top){
            Color(red: 1.0, green: 226/255, blue: 226/255).edgesIgnoringSafeArea(.all)
            Image("top").edgesIgnoringSafeArea(.top)
            VStack{
                RoundedRectangle(cornerRadius: 15).foregroundColor(Color(red: 1.0, green: 155/255, blue: 155/255))
                    .frame(width: 350, height: 450)
                    .padding(.bottom, 7)
                    .overlay(
                        VStack{
                            Text("Female Inspiration of the Day").font(Font.custom("AvenirNext-Bold", size: 25))
                            .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                                .padding()
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
                                    Text("Marie Curie").font(Font.custom("Bodoni", size: 50))
                                    .foregroundColor(Color(red: 133/255, green: 51/255, blue: 153/255))
                                
                            }
                            
                            
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
                                self.viewRouter.currentPage = "Saved Profile"
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
                        ZStack{
                            HStack{
                                Image("camera")
                                Spacer()
                                
                                Button(action: {self.showActionSheet = true}) {
                                    Text("Use Camera").font(Font.custom("AvenirNext-Bold", size: 15))
                                    .foregroundColor(Color(red: 1.0, green: 226/255, blue: 226/255))
                                
                                }.frame(width: 100)
                                .padding(.leading, 10)
                                .actionSheet(isPresented: $showActionSheet){
                                    ActionSheet(title: Text("Take a picture to detect an object"), message: nil, buttons: [
                                        //Button1
                                        
                                        .default(Text("Camera"), action: {
                                            self.showImagePicker = true
                                            self.sourceType = .camera
                                        }),
                                        //Button2
                                        .default(Text("Photo Library"), action: {
                                            self.showImagePicker = true
                                            self.sourceType = .photoLibrary
                                        }),
                                        
                                        //Button3
                                        .cancel()
                                        
                                    ])
                                }.sheet(isPresented: $showImagePicker){
                                    imagePicker(image: self.$uploadimage, showImagePicker: self.$showImagePicker, sourceType: self.sourceType)
                                    
                                }
                            }.padding(.leading, 40)
                            .padding(.trailing, 155)
                            
                            if uploadimage != nil {
                                ZStack{
                                    Image(uiImage: uploadimage!)
                                    .resizable()
                                    .scaledToFit()
                                        .frame(width:100, height:100)
                                    
                                    Button(action: {self.uploadImage(image: self.uploadimage!)}) {
                                        Text("Use picture")
                                            .foregroundColor(Color(red: 1.00, green: 1.00, blue: 1.00, opacity: 1.0))
                                    }
                                }.padding(.trailing, 20)
                            }
                            else{
                                Spacer()
                            }
                            
                        }
                )
            }.padding(.top, 70)
        }
    }
    
    func uploadImage(image:UIImage){
        //print("got image")
        let visionImage = VisionImage(image: image)
        visionImage.orientation = image.imageOrientation
        
        let options = ImageLabelerOptions()
        options.confidenceThreshold = 0.7
        
        let labeler = ImageLabeler.imageLabeler(options: options)
        
        labeler.process(visionImage) { labels, error in
            guard error == nil, let labels = labels else { return }
            
            for label in labels {
                let labelText = label.text
                
                if(labelText == "Television"){
                    self.viewRouter.message = "Laptop"
                    self.viewRouter.details = """
                                            1. Data Scientist
                                            2. Web Developer
                                            3. Software Engineer
                                            4. Machine Learning Researcher
                                            """
                    self.viewRouter.currentPage = "Detected"
                }
                else if(labelText == "Musical instrument"){
                    self.viewRouter.message = "Calculator"
                    self.viewRouter.details = """
                                            1. Mathematician
                                            2. Statistician
                                            3. Data analyst
                                            4. Financial Manager
                                            """
                    self.viewRouter.currentPage = "Detected"
                }
            }
        }
        
        /*if let imageData = image.jpegData(compressionQuality: 1){
            let storage = Storage.storage()
            storage.reference().child("temp2").putData(imageData, metadata: nil){
                (_, err) in
                if let err = err {
                    print("an error has occurred - \(err.localizedDescription)")
                } else {
                    print("image uploaded successfully")
                    self.viewRouter.currentPage = "Home"
                }
            }
        } else {
            print("couldn't unwrap/case image to data")
        }*/
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(viewRouter: ViewRouter())
    }
}

//
//  ImagePicker.swift
//  Inspiration
//
//  Created by rebecca on 6/20/20.
//  Copyright © 2020 Rebecca Zhu. All rights reserved.
//

import Foundation
import SwiftUI


struct imagePicker:UIViewControllerRepresentable {
    @Binding var image: UIImage?
    @Binding var showImagePicker: Bool
    
    typealias UIViewControllerType = UIImagePickerController
    typealias Coordinator = imagePickerCoordinator
    
    var sourceType:UIImagePickerController.SourceType = .camera
    
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<imagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = sourceType
        picker.delegate = context.coordinator
        return picker
    }
    
    func makeCoordinator() -> imagePicker.Coordinator {
        return imagePickerCoordinator(image: $image, showImagePicker: $showImagePicker)
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<imagePicker>) {}
    
    
}



class imagePickerCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        @Binding var image: UIImage?
        @Binding var showImagePicker: Bool
    
    init(image:Binding<UIImage?>, showImagePicker: Binding<Bool>) {
            _image = image
            _showImagePicker = showImagePicker
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let uiimage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            image = uiimage
            showImagePicker = false
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        showImagePicker = false
    }


}

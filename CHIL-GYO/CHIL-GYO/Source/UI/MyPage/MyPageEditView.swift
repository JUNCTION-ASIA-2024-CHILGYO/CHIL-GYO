//
//  MyPageEditView.swift
//  CHIL-GYO
//
//  Created by KimYuBin on 8/11/24.
//

import SwiftUI

struct MyPageEditView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var nicknameText: String = ""
    @State private var babynameText: String = ""
    @State private var pregnancyDuration: Date = Date()
    @State private var showCustomActionSheet: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var selectedImage: UIImage? = nil
    @State private var imagePickerSourceType: UIImagePickerController.SourceType = .photoLibrary
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Spacer()
                    
                    ZStack {
                        if let selectedImage = selectedImage {
                            Image(uiImage: selectedImage)
                                .resizable()
                                .frame(width: 192, height: 192)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .fill(Color.black.opacity(0.4))
                                        .frame(width: 192, height: 192)
                                )
                        } else {
                            Image("profile")
                                .resizable()
                                .frame(width: 207, height: 207)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .fill(Color.black.opacity(0.4))
                                        .frame(width: 192, height: 192)
                                )
                        }
                        
                        Button(action: {
                            self.showImagePicker.toggle()
                        }) {
                            Image(systemName: "photo")
                                .resizable()
                                .frame(width: 40, height: 34)
                                .foregroundStyle(Color.white)
                        }
                        .padding()
                    }
                    .padding(.top, 52)
                    .padding(.bottom, 56)
                    
                    Spacer()
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Nickname")
                        .fontWeight(.semibold)
                    
                    HStack {
                        TextField("Enter your nickname...", text: $nicknameText, onCommit: {})
                        
                        if !nicknameText.isEmpty {
                            Button(action: {
                                self.nicknameText = ""
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundStyle(Color.black)
                            }
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .inset(by: 0.5)
                            .stroke(Color.chilBGSecondary, lineWidth: 1)
                    )
                    .padding(.top, 8)
                }
                .padding(.bottom, 32)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Your baby’s name")
                        .fontWeight(.semibold)
                    
                    HStack {
                        TextField("Enter your baby’s name...", text: $babynameText, onCommit: {})
                        
                        if !babynameText.isEmpty {
                            Button(action: {
                                self.babynameText = ""
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundStyle(Color.black)
                            }
                        }
                    }
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .inset(by: 0.5)
                            .stroke(Color.chilBGSecondary, lineWidth: 1)
                    )
                    .padding(.top, 8)
                }
                .padding(.bottom, 32)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Due date")
                        .fontWeight(.semibold)
                    
                    Button(action: {
                        showCustomActionSheet = true
                    }) {
                        Text(selectedDateFormatted)
                            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.chilBGSecondary, lineWidth: 1)
                            )
                    }
                    .padding(.top, 8)
                }
                
                Spacer()
            }
            .padding(.horizontal, 16)
            .navigationBarTitle("Edit Profile", displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                },
                trailing: Button(action: {
                    // 데이터 수정 로직 추가
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Done")
                        .foregroundStyle(Color.black)
                }
            )
            .navigationBarBackButtonHidden()
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(selectedImage: $selectedImage, sourceType: imagePickerSourceType)
            }
            
            // Custom Bottom Sheet with DatePicker
            if showCustomActionSheet {
                Color.black.opacity(0.3)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        withAnimation {
                            showCustomActionSheet = false
                        }
                    }
                
                VStack(spacing: 0) {
                    VStack {
                        DatePicker("Select Due Date", selection: $pregnancyDuration, displayedComponents: .date)
                            .datePickerStyle(WheelDatePickerStyle())
                            .labelsHidden()
                            .padding()
                    }
                    .background(Color.white)
                    
                    Divider()
                    
                    HStack {
                        Button(action: {
                            withAnimation {
                                showCustomActionSheet = false
                            }
                        }) {
                            Text("Cancel")
                                .frame(maxWidth: .infinity)
                                .padding()
                        }
                        
                        Divider()
                        
                        Button(action: {
                            withAnimation {
                                showCustomActionSheet = false
                            }
                        }) {
                            Text("Confirm")
                                .frame(maxWidth: .infinity)
                                .padding()
                        }
                    }
                    .background(Color.white)
                }
                .frame(width: UIScreen.main.bounds.width)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(radius: 20)
                .offset(y: showCustomActionSheet ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
            }
        }
    }
    
    var selectedDateFormatted: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy.MM.dd"
        return formatter.string(from: pregnancyDuration)
    }
}

// Helper view to present the image picker
struct ImagePicker: UIViewControllerRepresentable {
    @Binding var selectedImage: UIImage?
    var sourceType: UIImagePickerController.SourceType
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = sourceType
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        var parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.selectedImage = image
            }
            picker.dismiss(animated: true)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true)
        }
    }
}

#Preview {
    MyPageEditView()
}

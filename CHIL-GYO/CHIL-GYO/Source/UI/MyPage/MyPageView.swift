//
//  MyPageView.swift
//  CHIL-GYO
//
//  Created by KimYuBin on 8/11/24.
//

import SwiftUI
import SwiftData

struct MyPageView: View {
    @Environment(\.dismiss) var dismiss
    @Query var users: [User]
    
    private var me: User? {
        users.first(where: {$0.userName == "Dancing Rabbit"})
    }
    
    var body: some View {
        ZStack {
            Color.chilBGPrimary
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 0){
                HStack {
                    Spacer()
                    
                    Image(.profile1)
                        .frame(width: 240, height: 240)
                    
                    Spacer()
                }
                .padding(.top, 52)
                
                Spacer()
                
                Rectangle()
                    .foregroundStyle(Color.black)
                    .frame(height: 1)
                    .padding(.bottom, 4)
                
                HStack {
                    Text("Nickname")
                        .frame(width: 170, alignment: .topLeading)
                    
                    Text(me?.userName ?? "N/A")
                }
                .font(.body)
                .padding(.bottom, 7)
                
                Rectangle()
                    .foregroundStyle(Color.black)
                    .frame(height: 1)
                    .padding(.bottom, 4)
                
                HStack {
                    Text("Child’s name")
                        .frame(width: 170, alignment: .topLeading)
                    
                    Text(me?.babyName ?? "N/A")
                }
                .font(.body)
                .padding(.bottom, 7)
                
                Rectangle()
                    .foregroundStyle(Color.black)
                    .frame(height: 1)
                    .padding(.bottom, 4)
                
                HStack {
                    Text("Due date")
                        .frame(width: 170, alignment: .topLeading)
                    
                    Text("\(me?.pregnancyFeriod ?? 999)Weeks")
                }
                .font(.body)
                .padding(.bottom, 7)
                
                Spacer()
            }
            .padding(.horizontal, 16)
            .navigationBarTitle("Profile", displayMode: .inline)
            .navigationBarBackButtonHidden()
            .navigationBarItems(
                leading: Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                },
                trailing: NavigationLink(destination: MyPageEditView()){
                    Image(systemName: "square.and.pencil")
                        .foregroundColor(.black)
                }
            )
        }
    }
}

#Preview {
    MyPageView()
}

//
//  MyPageView.swift
//  CHIL-GYO
//
//  Created by KimYuBin on 8/11/24.
//

import SwiftUI
import SwiftData

struct MyPageView: View {
    @Query var user: [User]

    private var me: User? {
        user.first
    }
    
    var body: some View {
            VStack(alignment: .leading, spacing: 0){
                HStack {
                    Spacer()
                    
                    Image(.profile1)
                        .frame(width: 240, height: 240)
                    
                    Spacer()
                }
                .padding(.top, 52)
                
                Spacer()
                
                Divider()
                    .background(Color.black)
                
                HStack {
                    Text("Nickname")
                        .frame(width: 170, alignment: .topLeading)
                    
                    Text(me?.userName ?? "N/A")
                }
                .padding(.bottom, 7)
                
                Divider()
                    .background(Color.black)
                
                HStack {
                    Text("Child’s name")
                        .frame(width: 170, alignment: .topLeading)
                    
                    Text(me?.babyName ?? "N/A")
                }
                .padding(.bottom, 7)
                
                Divider()
                    .background(Color.black)
                
                HStack {
                    Text("Due date")
                        .frame(width: 170, alignment: .topLeading)
                    
                    Text("\(me?.pregnancyFeriod ?? 999)Weeks")
                }
                .padding(.bottom, 7)
                
                Spacer()
            }
            .padding(.horizontal, 16)
            .navigationBarTitle("Profile", displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: {
                    
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

#Preview {
    MyPageView()
}

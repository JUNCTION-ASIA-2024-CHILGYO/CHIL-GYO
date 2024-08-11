//
//  MyPageView.swift
//  CHIL-GYO
//
//  Created by KimYuBin on 8/11/24.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0){
                HStack {
                    Spacer()
                    
                    Image(.profile)
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
                    
                    Text("Kumi Lee")
                }
                .padding(.bottom, 7)
                
                Divider()
                    .background(Color.black)
                
                HStack {
                    Text("Child’s name")
                        .frame(width: 170, alignment: .topLeading)
                    
                    Text("Lemony")
                }
                .padding(.bottom, 7)
                
                Divider()
                    .background(Color.black)
                
                HStack {
                    Text("Due date")
                        .frame(width: 170, alignment: .topLeading)
                    
                    Text("3Weeks")
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
}

#Preview {
    MyPageView()
}

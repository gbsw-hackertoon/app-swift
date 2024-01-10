//
//  MainPageView.swift
//  hack_pj
//
//  Created by 박성민 on 1/10/24.
//

import SwiftUI

struct MainPageView: View {
    var body: some View {
        NavigationStack{
            Image("Imagelogo")
                .padding()
            Image("logo")
                .resizable()
                .frame(width: 120,height: 50)
                .padding()
            Text("청소년 문해력 향상을 위한 웹소설 창작")
                .foregroundStyle(.black.opacity(0.9))
            VStack(spacing: 50){
                NavigationLink(destination: LoginView()){
                    Text("로그인")
                        .bold()
                        .font(.system(size: 22))
                        .foregroundStyle(.white)
                        .padding(EdgeInsets(top: 20, leading: 80, bottom: 20, trailing: 80))
                        .background(Color.orange)
                        .cornerRadius(10)
                }
                .padding([.top],40)
                NavigationLink(destination: SignupView()) {
                    Text("회원가입")
                        .bold()
                        .foregroundColor(.orange)
                        .padding(EdgeInsets(top: 20, leading: 80, bottom: 20, trailing: 80))
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange))
                }
            }
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    MainPageView()
}

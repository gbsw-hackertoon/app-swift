//
//  SignupView.swift
//  hack_pj
//
//  Created by 박성민 on 1/10/24.
//

import SwiftUI

struct SignupView: View {
    @State var id = ""
    @State var pw = ""
    @State var email = ""
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    NavigationLink(destination: MainPageView()){
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                            .padding()
                    }
                    Spacer()
                    Text("회원가입")
                        .bold()
                        .padding(.trailing,50)
                    Spacer()
                }
                HStack{
                    Text("아이디")
                    Spacer()
                }.padding()
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 360,height: 60)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                    TextField("최소 3자 이상",text: $id)
                        .padding([.horizontal],30)
                    
                }.padding([.bottom],40)
                HStack{
                    Text("이메일")
                    Spacer()
                }.padding()
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 360,height: 60)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                    TextField("이메일을 입력해주세요",text: $email)
                        .foregroundColor(Color.gray)
                        .padding([.horizontal],30)
                    
                }.padding([.bottom],40)
                HStack{
                    Text("비밀번호")
                    Spacer()
                }.padding()
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 360,height: 60)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                    TextField("비밀번호 6자리 이상입력",text: $pw)
                        .padding([.horizontal],30)
                }
                Spacer()
                VStack{
                    NavigationLink(destination: SignupView()){
                        Text("로그인")
                            .bold()
                            .foregroundStyle(.white)
                            .padding(EdgeInsets(top: 15, leading: 140, bottom: 15, trailing: 140))
                            .background(Color.orange)
                            .cornerRadius(5)
                    }
                }.padding(.bottom,1)
            }
        }
        .navigationBarBackButtonHidden()
    }}

#Preview {
    SignupView()
}

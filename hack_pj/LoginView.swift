//
//  LoginView.swift
//  hack_pj
//
//  Created by 박성민 on 1/10/24.
//

import SwiftUI

struct LoginView: View {
    @State var id = ""
    @State var pw = ""
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
                    Text("로그인")
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
                HStack{
                    Text("아직 계정이 없으신가요?")
                    NavigationLink(destination: SignupView()){
                        Text("회원가입하기")
                    }
                }.padding([.top],40)
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
    }
}

#Preview {
    LoginView()
}

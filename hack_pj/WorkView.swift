//
//  WorkView.swift
//  hack_pj
//
//  Created by 박성민 on 1/9/24.
//

import SwiftUI

struct WorkView: View {
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    Text("내 서재")
                        .padding(.bottom,20)
                    HStack{
                        Text("내가 쓴작품")
                            .bold()
                            .font(.system(size: 20))
                        Spacer()
                    }.padding([.leading,.trailing],20)
                    HStack{
                        Image("test")
                            .resizable()
                            .frame(width: 85,height: 80)
                            .cornerRadius(20)
                        VStack(spacing:15){
                            Text("방탈출 게임에 오신것을 환영합니다")
                            HStack(spacing:40){
                                NavigationLink(destination: jakpumView()){
                                    Text("회차쓰기")
                                        .bold()
                                        .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                                        .foregroundStyle(.orange)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange))
                                }
                                Text("작품삭제")
                                    .bold()
                                    .padding(EdgeInsets(top: 8, leading: 20, bottom: 8, trailing: 20))
                                    .foregroundStyle(.white)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.orange))
                                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange))
                            }
                        }
                        Spacer()
                    }.padding()
                    HStack{
                        Text("북마크한 피드백")
                            .bold()
                            .font(.system(size: 20))
                        Spacer()
                    }.padding()
                    VStack{
                        Text("UserName")
                            .bold()
                            .padding(.bottom,20)
                        Text("2화후반에어쩌고저쩌고")
                    }.padding()
                        .frame(width: 350)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                    Spacer()
                }
            }
            
        }
    }
}

#Preview {
    WorkView()
}

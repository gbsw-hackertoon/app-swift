//
//  homeView.swift
//  hack_pj
//
//  Created by 박성민 on 1/9/24.
//

import SwiftUI

struct homeView: View {
    @State var search: String = ""
    var body: some View {
        NavigationStack{
            VStack {
                HStack{
                    //header (로고,검색,창작 등)
                    Image("logo")
                        .resizable()
                        .frame(width: 70,height: 25)
                        .padding([.trailing])
                    Spacer()
                    HStack{
                        TextField("소설 검색",text: $search)
                            .padding([.leading],10)
                        
                        Spacer()
                        
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 20))
                            .padding(5)
                    }
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                    NavigationLink(destination: CreateView()) {
                        Image(systemName: "applepencil.and.scribble")
                            .foregroundColor(.black)
                            .font(.system(size: 25))
                            .padding([.leading],10)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
                
                HStack{
                    //인기 소설 Text
                    Text("BEST 인기 소설")
                        .bold()
                        .font(.system(size: 20))
                    Spacer()
                }
                .padding([.leading],20)
                ZStack{
                    Image("test")
                        .resizable()
                        .frame(width: 320,height: 300)
                        .cornerRadius(10)
                        .scaledToFit()
                    HStack{
                        HStack{
                            HStack{
                                VStack{
                                    Text("title")
                                        .bold()
                                        .font(.system(size: 17))
                                    Text("bu_title")
                                        .opacity(0.5)
                                }
                                Spacer()
                                HStack{
                                    Image(systemName:"heart.fill")
                                        .foregroundColor(.orange)
                                        .font(.system(size: 14))
                                    Text("heart")
                                        .font(.system(size: 14))
                                        .foregroundStyle(.orange)
                                }
                                .padding(6)
                                .background(Color.white)
                                .cornerRadius(20)
                            }
                            .padding(10)
                            .frame(width: 320,height: 70)
                            .background(.thinMaterial)
                            .cornerRadius(10)
                        }
                        .padding([.top],260)
                    }
                    .padding()
                }
                ScrollView{
                    HStack{
                        Text("최신 소설")
                            .bold()
                            .font(.system(size: 22))
                            .padding()
                        Spacer()
                            
                    }
                    HStack{
                        Image("test")
                            .resizable()
                            .frame(width: 80,height: 100)
                            .cornerRadius(10)
                            .padding([.leading],15)
                        VStack(spacing:10){
                            Text("검은 기억의 파편")
                                .font(.system(size: 18))
                                .bold()
                            Text("바람숲")
                            VStack{
                                Text("판타지")
                                    .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                                    .foregroundStyle(Color.orange)
                                    .background(Color.pink.opacity(0.1))
                                    .cornerRadius(20)
                                Spacer()
                            }
                        }
                        .padding()
                        Spacer()
                    }
                }
                
                Spacer()
            }
            .padding()
        }
    }
}
struct EmptyView: View{
    var body: some View{
        Text("")
    }
}
#Preview {
    homeView()
}

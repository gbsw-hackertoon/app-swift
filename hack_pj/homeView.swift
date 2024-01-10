//
//  homeView.swift
//  hack_pj
//
//  Created by 박성민 on 1/9/24.
//

import SwiftUI

struct homeView: View {
    @State var search: String = ""
    @State var gocreate = false
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
                    Button{
                        self.gocreate = true
                    }label: {
                        Image(systemName: "applepencil.and.scribble")
                            .foregroundColor(.black)
                            .font(.system(size: 25))
                            .padding([.leading],10)
                    }
                    NavigationLink(destination: createView(), isActive: $gocreate){
                        EmptyView()
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
                        Text("asdf")
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

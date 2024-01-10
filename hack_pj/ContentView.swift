//
//  ContentView.swift
//  hackaton_pj
//
//  Created by 박성민 on 1/9/24.
//

import SwiftUI

struct Tab: View{
    @State var nav = 1
    
    var body : some View{
        NavigationStack{
            VStack{
                TabView(selection: $nav){
                    homeView()
                        .tabItem {
                            Image(systemName:"house.fill")
                            Text("홈")
                        }
                        .tag(1)
                    WorkView()
                        .tabItem {
                            Image(systemName: "book")
                            Text("내 서재")
                        }
                    lillayView()
                        .tabItem {
                            Image(systemName: "figure.run")
                            Text("릴레이 소설")
                        }
                    userView()
                        .tabItem {
                            Image(systemName: "person")
                            Text("계정")
                        }
                }
            }
        }
    }
}

#Preview {
    Tab()
}

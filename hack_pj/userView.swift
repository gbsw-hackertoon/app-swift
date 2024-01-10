//
//  userView.swift
//  hack_pj
//
//  Created by 박성민 on 1/9/24.
//

import SwiftUI

struct userView: View {
    var body: some View {
        VStack{
            Text("계정")
                .padding(.bottom,30)
            Image("user")
                .padding(.bottom,30)
            HStack{
                VStack{
                    Text("활동명")
                        .font(.system(size: 14))
                    Text("노무현")
                        .bold()
                }
                Spacer()
                Button{
                    
                }label: {
                    Text("변경")
                        .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
                        .foregroundStyle(.black)
                        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white))
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black.opacity(0.5)))
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black.opacity(0.5)))
            
            Button{
                
            }label: {
                Text("로그아웃")
                    .bold()
                    .foregroundStyle(.black)
                    .frame(width: 360, height: 50)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
            }
            .padding()
            Spacer()
        }.padding()
    }
}

#Preview {
    userView()
}
